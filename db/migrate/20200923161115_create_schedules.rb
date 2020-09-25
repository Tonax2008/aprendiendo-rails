class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.name :string
      t.references :group, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
