class MovieSerializer < ActiveModel::Serializer
  attributes :id,:title, :plot, :runtime,
  :poster_img, :release_date

end
