class MovieSerializer < ActiveModel::Serializer
  attributes :id,:title, :plot, :backdrop_path,
  :poster_img, :release_date, :category

  has_many :matchings
  has_many :users, through: :matchings
end
