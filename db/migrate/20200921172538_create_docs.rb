class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :description
      t.string :student
      t.decimal :materia

      t.timestamps
    end
  end
end
