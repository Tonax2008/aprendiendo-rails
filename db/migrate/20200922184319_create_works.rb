class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.references :matricula_Student, foreign_key: true
      t.references :code_task, foreign_key: true
      t.boolean :send 
      t.timestamps
    end
  end
end
