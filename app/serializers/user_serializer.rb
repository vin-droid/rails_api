class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :city, :avatar_url, :status
end
