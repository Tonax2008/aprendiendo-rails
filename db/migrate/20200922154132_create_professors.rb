class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.string  :matricula_professor
      t.string :last_name

      t.timestamps
    end
  end
end
