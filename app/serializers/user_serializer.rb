class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :hometown, :bio, :avatar
end
