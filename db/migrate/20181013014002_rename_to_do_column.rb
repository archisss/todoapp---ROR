class RenameToDoColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :owner, :user_id
  end
end
