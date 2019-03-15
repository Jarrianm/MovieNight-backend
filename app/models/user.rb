class User < ApplicationRecord
  has_many :matchings
  has_many :movies through :matching

end
