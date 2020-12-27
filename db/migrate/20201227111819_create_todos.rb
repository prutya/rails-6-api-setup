class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :content
      t.time :completed_at

      t.timestamps
    end
  end
end
