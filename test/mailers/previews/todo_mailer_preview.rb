# frozen_string_literal: true

class TodoMailerPreview < ActionMailer::Preview # Preview all emails at http://localhost:3000/rails/mailers/todo_mailer
  def weekly_report # Preview this email at http://localhost:3000/rails/mailers/todo_mailer/weekly_report
    user = User.find(16)
    TodoMailer.weekly_report(user)
  end
end