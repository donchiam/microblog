require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sqlite3'
require './models'

set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}

get '/' do
	@posts = BlogPost.all
	@class = "home"
  	erb :home

end

get '/blogpost/:id' do
	@blogpost = BlogPost.find(params[:id])
	erb :viewblogpost
end

get '/signup' do
  	erb :signup
end

get '/login' do
  	erb :login
end

get '/allprofiles' do
	@users = User.all
	erb :allprofiles

end

get '/profile/:id' do
	@user = User.find(params[:id])
  	erb :profile
end

get '/writeblogpost' do
  	erb :writeblogpost
end
