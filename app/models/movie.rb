class Movie < ApplicationRecord
has_many :users
has_many :matchings

end
