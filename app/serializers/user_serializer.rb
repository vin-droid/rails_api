class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :avatar_url, :status
end
