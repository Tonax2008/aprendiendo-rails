class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.references :code_group, foreign_key: true
      t.references :matricula_student, foreign_key: true
      t.decimal :quota

      t.timestamps
    end
  end
end
