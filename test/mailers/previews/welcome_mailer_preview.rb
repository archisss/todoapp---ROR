# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/notify
  def notify
    WelcomeMailer.notify Todo.new(description: 'pendient task from ToDo')
  end
end
