class Task < ApplicationRecord
  belongs_to :subject
  has_many :work

  validates :name, presence :true
  validates :subject_id, presence :true

  mount_uploader :doc , DocUploader
end
