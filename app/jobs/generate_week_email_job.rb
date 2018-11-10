class GenerateWeekEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @user = User.all
    @user.each do |u|
      mail = TodoMailer.weekly_report(u)
      mail.deliver_now!
    end
    puts 'SIDEKIQ SENDER FROM GENERATEWEEKEMAIL JOB'
  end
end
