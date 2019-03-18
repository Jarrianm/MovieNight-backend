class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :username, :location,
    :age, :bio, :password_digest

    has_many :matchings
    has_many :movies, through: :matching
end
