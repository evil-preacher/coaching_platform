class Coach < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable, :confirmable, :lockable

  has_many :courses

  validates :email, presence: true, uniqueness: true
end
