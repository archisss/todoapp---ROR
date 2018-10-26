# frozen_string_literal: true
class TodoMailerPreview < ActionMailer::Preview # Preview all emails at http://localhost:3000/rails/mailers/todo_mailer
  def weekly_report # Preview this email at http://localhost:3000/rails/mailers/todo_mailer/weekly_report
    todo = Todo.last
    # TODO . nota del pex todo = Todo.where(user_id: '1')
    # user = User.email = 'hola@hola.com'
    TodoMailer.weekly_report(todo)
  end
end