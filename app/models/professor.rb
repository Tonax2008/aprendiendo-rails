class Professor < ApplicationRecord
has_many :schedule

validates :name ,presence: true
end
