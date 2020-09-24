class Subject < ApplicationRecord
has_many :task

validates :name ,presence: true
validates :name , uniqueness: true
end
