class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :hometown, :bio, :avatar, :posts_count
  has_many :posts
end
