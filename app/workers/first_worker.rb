# frozen_string_literal: true

class FirstWorker
  include Sidekiq::Worker
  #def perform(user) #antes *
    #@user = User.all
    #@user.each do |u|
    #mail = TodoMailer.weekly_report(u)
    #mail.deliver_now
  #end

  def test(name, age)
    #puts "hola #{name} tienes #{age}"
  end
end
