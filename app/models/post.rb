class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  # def likes_count
  #   self.likes.length
  # end

  def self.sortbydate
    self.all.map{|a| a.visit_date}.sort_by { |s| Date.strptime(s, '%m/%d/%Y') }.reverse
  end
  
end
