class PostSerializer < ActiveModel::Serializer
  attributes :id, :country, :title, :visit_date, :review, :picture
  has_one :user
end
