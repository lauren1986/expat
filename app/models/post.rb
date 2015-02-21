class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :topics
  has_many :categories, :through => :topics
end
