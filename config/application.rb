require_relative 'boot'

require 'csv'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Apptodo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #comando para poder utilizar el mailer
    #config.action_mailer.default_url_options = { host: 'example.com'}

    config.active_job.queue_adapter = Rails.env.production? ? :sidekiq : :async

    config.cache_store = :redis_store, "redis://localhost:6379/0/cache", { expires_in: 90.minutes }

    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
      ENV[key.to_s] = value
      end if File.exist?(env_file)
    end
  end
end
