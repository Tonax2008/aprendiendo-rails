class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.boolean :send
      t.references :task, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
