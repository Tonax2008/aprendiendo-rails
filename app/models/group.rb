class Group < ApplicationRecord
  belongs_to :subject
  has_many :schedule
end
