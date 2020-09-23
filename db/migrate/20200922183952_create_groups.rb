class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :code_group
      t.references :code_subject, foreign_key: true

      t.timestamps
    end
  end
end
