class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :code_schedules do |t|
      t.string :code_schedule
      t.references :code_group, foreign_key: true
      t.references :matricula_professor, foreign_key: true

      t.timestamps
    end
  end
end
