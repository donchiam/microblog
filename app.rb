require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sqlite3'
require './models'

set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}

get '/' do
	@posts = BlogPost.all
<<<<<<< HEAD
	@users = User.all
	@class = "home"
  	erb :home
=======
	@class = "home"
	erb :home
end

get '/profile' do
	@class = "profile"
	erb :profile
end

get '/blogpost/:id' do
	@blogpost = BlogPost.find(params[:id])
	erb :viewblogpost
>>>>>>> 7cba97ac5a024302e14e9e79b7f108b59ebe8e6b
end

get '/signup' do
  	erb :signup
end

get '/login' do
  	erb :login
end

<<<<<<< HEAD
get '/profile/:id' do
	@user = User.find(params[:id])
  	erb :profile
end

get '/writeblogpost' do
  	erb :writeblogpost
end
=======
get '/writeblogpost' do
  erb :writeblogpost
end
>>>>>>> 7cba97ac5a024302e14e9e79b7f108b59ebe8e6b
