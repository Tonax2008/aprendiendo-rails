class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :code_task
      t.references :code_subject, foreign_key: true

      t.timestamps
    end
  end
end
