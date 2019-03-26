class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :username, :location,
    :age, :bio, :password_digest, :profile_img



has_many :movies, through: :matchings
end
