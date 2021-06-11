class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :username, :commentdate, :user_id, :user_avatar
  has_one :user
  has_one :post
end
