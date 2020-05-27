class Course < ApplicationRecord
  belongs_to :coaches

  validates_presence_of :title
end
