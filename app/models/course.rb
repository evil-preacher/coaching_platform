class Course < ApplicationRecord
  belongs_to :coach
  has_many_attached :attachments

  validates_presence_of :title
end
