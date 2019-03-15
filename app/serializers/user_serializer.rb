class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location,
    :age, :bio, :password_digest
end
