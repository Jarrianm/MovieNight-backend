class Intrest < ApplicationRecord
  has_many :movies
  has_many :users through :movies
end
