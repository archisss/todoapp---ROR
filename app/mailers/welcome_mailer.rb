# frozen_string_literal: true
class WelcomeMailer < ApplicationMailer
  def notify(todo)
    @todo = todo
    @testemail = 'algo@algo.com'

    mail to: @testemail, subject: 'todo.description'
  end
end
