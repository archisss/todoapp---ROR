# frozen_string_literal: true
class FirstWorker
  include Sidekiq::Worker
  def perform(*args)
    # Do something
    puts 'I am backgroud worker i tried to send and email new'
    TodoMailer.weekly_report(todo)
  end
end
