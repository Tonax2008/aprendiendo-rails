class Task < ApplicationRecord
  belongs_to :subject
  has_many :work

  validates :name, presence: true
  validates :doc, allow_blank: true, format:
   { with: %r{\.(doc|docx|png|jpg)\Z}i,
    message: 'Seleccione archivos  DOC,DOCX, JPG o PNG .'
   }

  mount_uploader :doc , DocUploader
end
