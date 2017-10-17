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

get '/profile' do
	@class = "profile"
	erb :profile
end

get '/blogpost/:id' do
	@blogpost = BlogPost.find(params[:id])
	erb :viewblogpost
end