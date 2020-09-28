class Student < ApplicationRecord
    has_many :hour
    has_many :work

    validates :name, presence: true
    validates :promedio, numericality: true

    mount_uploader :photo, PhotoUploader
end
