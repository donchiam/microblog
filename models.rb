class User < ActiveRecord::Base
	has_many :blogposts
	has_many :comments, through: :blogposts
end

class BlogPost < ActiveRecord::Base
	belongs_to :user
	has_many :users, through: :comments
	has_many :comments
end

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :blogpost
end