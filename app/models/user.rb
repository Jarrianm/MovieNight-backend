class User < ApplicationRecord
  has_many :movies
  has_many :intrests through :movies

  has_many :matchings through :intrests,:foreign_key => :matched_user_id, class_name:'Matchings'
  has_many :matchings through :intrests,:foreign_key => :user_id, class_name:'Matchings'


  has_many :users
end
