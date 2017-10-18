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

post '/login' do
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

get '/signup' do
    erb :signup
end

post '/signup' do
  user = User.new(
    fullname: params[:fullname],
    username: params[:username],
    email: params[:email],
    password: params[:password],
    image: params[:image]
  )
  if user.save
    flash[:message] = "Cool, you registered successfully"
    redirect '/'
  else
    flash[:message] = "Ooops, your account couldn't be created"
    redirect '/'
  end
end

get '/login' do
    erb :login
end

get '/blogpost/:id' do
  @class = "blogpost"
  @blogpost = BlogPost.find(params[:id])
  erb :viewblogpost
end

get '/allprofiles' do
  @users = User.all
  erb :allprofiles
end

get '/profile/:id' do
  @class = "profile"
  @user = User.find(params[:id])
    erb :profile
end



get '/writeblogpost' do
  @blogpost = BlogPost.new
    erb :writeblogpost
end


post '/blogpost' do
  @blogpost = BlogPost.new(
    title: params[:title],
    body: params[:body],
    user_id: @current_user.id
    )
  if @blogpost.save
    redirect "/blogpost/#{@blogpost.id}"
  else
    erb :writeblogpost
  end
end

get '/blogpost/:id' do
  @blogpost = BlogPost.find(params[:id])
  erb :viewblogpost
end

get '/viewblogpost' do
  @comment = Comment.new
  erb :viewblogpost
end

post '/viewblogpost' do
  @comment = Comment.new(
    comment: params[:comment],
    user_id: @current_user.id
    )
  if @comment.save
    redirect "/blogpost/#{@blogpost.id - 1}"
  else
    erb :viewblogpost
  end
end


get '/blogpost/:id' do
  @blogpost = BlogPost.find(params[:id])
  erb :viewblogpost
end




get '/logout' do
  session[:user_id] = nil
  flash[:message] = "You're logged out"
  redirect '/'
end








def current_user
  @current_user = User.find(session[:user_id]) if session[:user_id]
end

