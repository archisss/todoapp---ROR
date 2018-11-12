# frozen_string_literal: true

class AddEstatusToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :estate, :boolean
  end
end
