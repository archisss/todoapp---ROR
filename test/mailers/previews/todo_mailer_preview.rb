# Preview all emails at http://localhost:3000/rails/mailers/todo_mailer
class TodoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/todo_mailer/weekly_report
  def weekly_report
    todo = Todo.last
    #todo = Todo.where(user_id: '1')
    #user = User.email = 'hola@hola.com'
    TodoMailer.weekly_report(todo)
  end

end
