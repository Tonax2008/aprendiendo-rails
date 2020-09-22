class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.decimal :matricula
      t.string :last_string

      t.timestamps
    end
  end
end
