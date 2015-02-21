class Category < ActiveRecord::Base
  has_many :posts, :through => :topics
end
