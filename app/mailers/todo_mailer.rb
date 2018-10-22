 # frozen_string_literal: true
class TodoMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.todo_mailer.weekly_report.subject
  #
  def weekly_report(todo)
    @todo = todo
    @user = @todo.user
    mail to: @user.email, subjet: 'Your weekly ToDos'
  end
end
