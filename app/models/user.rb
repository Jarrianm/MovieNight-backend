
class User < ApplicationRecord
  has_many :movies
  has_many :matchings, through: :movies
  
  validates :name, presence: true
  validates :username, uniqueness: true
  validates :location, presence: true
  validates :age, presence: true
  validates :bio, presence: true
  validates :password, :presence => true,
  :confirmation => true,
  :length => {:within => 6..40},
  :on => :create
  has_secure_password

end
