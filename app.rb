require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sqlite3'
require './models'

set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}


get '/' do
  erb :home
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

get '/profile' do
  erb :profile
end

get '/writeblogpost' do
  erb :writeblogpost
end
