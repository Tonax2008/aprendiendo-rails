class Hour < ApplicationRecord
  belongs_to :code_group
  belongs_to :matricula_student
end
