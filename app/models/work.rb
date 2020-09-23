class Work < ApplicationRecord
  belongs_to :matricula_Student
  belongs_to :code_task
  belongs_to :send
end
