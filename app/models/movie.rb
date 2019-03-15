class Movie < ApplicationRecord
  has_many :matchings
  has_many :users through :matchings


end
