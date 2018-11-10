# frozen_string_literal: true

class FirstWorker
  include Sidekiq::Worker
  def perform(*)
    @user = User.all
    @user.each do |u|
    mail.deliver_now
    mail = TodoMailer.weekly_report(u)
    end
    puts "Log. Email send"
  end
end
