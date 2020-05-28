class Course < ApplicationRecord
  belongs_to :coach

  validates_presence_of :title
end
