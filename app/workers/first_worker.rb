# frozen_string_literal: true

class FirstWorker
  include Sidekiq::Worker
  def perform(*)
    @user = User.all
    @user.each do |u|
    mail = TodoMailer.weekly_report(user)
    mail.deliver_now
  end
end
