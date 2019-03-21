class MovieSerializer < ActiveModel::Serializer
  attributes :id,:title, :plot, :backdrop_path,
  :poster_img, :release_date, :category
  
  has_many :users
  has_many :matchings

end
