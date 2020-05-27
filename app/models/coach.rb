class Coach < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable, :confirmable, :lockable
end
