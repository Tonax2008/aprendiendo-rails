class Task < ApplicationRecord
  belongs_to :subject
  has_many :work

  mount_uploader :doc , DocUploader
end
