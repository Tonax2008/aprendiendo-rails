class AddDocToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :doc, :string
  end
end
