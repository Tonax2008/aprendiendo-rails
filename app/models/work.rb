class Work < ApplicationRecord
  belongs_to :task
  belongs_to :student

  validates :task_id, presence :true
  validates :student_id, presence :true
end
