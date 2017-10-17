require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sqlite3'
require './models'

enable :sessions
set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}

before do
  current_user
end

get '/' do
	@posts = BlogPost.all
	@class = "home"
	erb :home
end

post '/' do
	user = User.find_by(username: params[:username])
	if user && user.password == params[:password]
		session[:user_id] = user.id
		flash[:message] = "You're now logged in!"
		redirect '/'
	else
		flash[:message] = "Email and password did not match"
		redirect '/'
	end
end

get '/profile' do
	@class = "profile"
	erb :profile
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

get '/writeblogpost' do
  erb :writeblogpost
end

get '/logout' do
  session[:user_id] = nil
  flash[:message] = "You're logged out. Cool!"
  redirect '/'
end

def current_user
  @current_user = User.find(session[:user_id]) if session[:user_id]
end