class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  validates :file, presence: true
  validates :file_type, presence: true
  validates :file_name, presence: true

end
