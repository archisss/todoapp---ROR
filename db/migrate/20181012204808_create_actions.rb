class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :description
      t.string :owner

      t.timestamps
    end
  end
end
