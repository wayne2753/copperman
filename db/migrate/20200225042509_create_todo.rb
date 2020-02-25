class CreateTodo < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.integer :status
      t.integer :priority
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
