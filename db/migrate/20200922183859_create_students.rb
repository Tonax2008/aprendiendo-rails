class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :matricula_Student
      t.string :name
      t.string :last_name
      t.decimal :promedio

      t.timestamps
    end
  end
end
