class PostSerializer < ActiveModel::Serializer
  attributes :id, :country, :title, :visit_date, :review, :picture, :user_id, :likes, :likes_count
  has_one :user
  has_many :comments
  # has_many :likes
end
