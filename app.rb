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
  @class = "home"
  @recent = BlogPost.order(:created_at)
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
    flash[:message] = "Your account was successfully created, click log in to login"
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

post '/deleteaccount' do  
  current = User.find(session[:user_id])
  session[:user_id] = nil
  current.destroy
  redirect '/'
end

post '/updateImage' do
  current = User.find(session[:user_id])
  current.update(
      image: params[:image]
    )
  redirect back
end

post '/updateUsername' do
  current = User.find(session[:user_id])
  current.update(
      username: params[:username]
    )
  redirect back
end

post '/updateFullname' do
  current = User.find(session[:user_id])
  current.update(
      fullname: params[:fullname]
    )
  redirect back
end

post '/updateEmail' do
  current = User.find(session[:user_id])
  current.update(
      email: params[:email]
    )
  redirect back
end

post '/updatePassword' do
  current = User.find(session[:user_id])
  current.update(
      password: params[:password]
    )
  redirect back
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

get '/comment' do
  @comment = Comment.new
    erb :viewblogpost
end

post '/comment' do
  @comment = Comment.new(
    comment: params[:comment],
    user_id: @current_user.id,
    blog_post_id: params[:blog_post_id]
    )
  if @comment.save
    redirect back
    #redirect "/blogpost/#{blogpost.comment.id}"
  else
    erb :viewblogpost
  end
end

get '/allblogposts' do
  @blogposts = BlogPost.all.order(id: :desc)
  erb :allblogposts
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