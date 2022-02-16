class User < ApplicationRecord
  has_secure_password validations: true
  
  has_many :tasks
  
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
