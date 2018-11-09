class GenerateWeekEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    #@user = User.all
    #mail = TodoMailer.weekly_report(u)
    #mail.deliver_now
    #@user.each do |u|
    #end
    puts 'SIDEKIQ SENDER FROM GENERATEWEEKEMAIL JOB'
  end
end
