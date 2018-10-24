# frozen_string_literal: true
class WelcomeMailerPreview < ActionMailer::Preview # Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
  def notify # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/notify
    WelcomeMailer.notify Todo.new(description: 'pendient task from ToDo')
  end
end