# frozen_string_literal: true

class GenerateWeekEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @user = User.all
    @user.each do |u|
      mail = TodoMailer.weekly_report(u)
      mail.deliver_now!
    end
  end
end
