class User < ActiveRecord::Base
	has_many :blog_posts
	has_many :comments, through: :blog_posts
end

class BlogPost < ActiveRecord::Base
	belongs_to :user
	has_many :users, through: :comments
	has_many :comments
end

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :blog_post
end