class PostSerializer < ActiveModel::Serializer
  attributes :id, :country, :title, :visit_date, :review, :picture, :likes_count, :user_id
  has_one :user
  has_many :comments
  has_many :likes
end
