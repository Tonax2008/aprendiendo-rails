class Work < ApplicationRecord
  belongs_to :task
  belongs_to :student
end
