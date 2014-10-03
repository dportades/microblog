require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "sinatra/base"
require "rack-flash"
require "./models"
require 'pry'

set :database, "sqlite3:microblog.sqlite3"
enable :sessions
use Rack::Flash, :sweep => true
set :sessions => true

def set_current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
    unless @current_user.account
      @current_user.account = Account.create
    end
  end
end

get '/' do
  set_current_user
  if @current_user
    redirect '/home'
  else 
     erb :index
  end
end

get '/index' do
  erb :index
end

get '/home' do
  erb :home
end

get '/profile' do
  set_current_user
  erb :profile
end

get '/settings' do
  set_current_user
  if @current_user
    erb :settings
  else
    redirect '/error'
  end
end

get '/error' do
  erb :error
end


post '/in' do

  email = params[:user][:email]
  password = params[:user][:password]

  @user = User.find_by(email: email)

  if @user && @user.password == password
    # flash[:notice] = 'You’ve been signed in successfully.'
    session[:user_id] = @user.id
    redirect '/home'
  else
    flash[:alert] = "Opps, there was a problem with the log in."
    redirect '/error'
  end
end

post '/up' do
  puts "****"
  puts params
  puts "****"
  
  user = User.create do |u|
    u.fname = params[:user][:fname]
    u.lname = params[:user][:lname]
    u.username = params[:user][:username]
    u.email = params[:user][:email]
    u.password = params[:user][:password]
    u.location = params[:user][:location]
  end

  session[:user_id] = user.id
  
  flash[:alert] = "Welcome, new user!"
  redirect '/home'
end

post '/sign_out' do
  puts "****"
  puts session[:user_id]
  puts "*****"
  session[:user_id] = nil
  puts "*****"
  puts session[:user_id]
  puts "*****"
  flash[:notice] = 'You have successfully signed out!'
  redirect '/error'
end


post '/update' do
  puts "****"
  puts params
  puts "****"
  set_current_user

  @current_user.update_attributes(
    fname: params[:user][:fname],
    lname: params[:user][:lname],
    username: params[:user][:username],
    email: params[:user][:email],
    password: params[:user][:password],
    location: params[:user][:location]
  )

  @current_user.account.update_attributes(
    profile_image_url: params[:account][:profile_image_url]
  )
  flash[:notice] = 'Your updates have been saved!'
  redirect '/home'
end


post "/blogposts" do
  set_current_user
  puts "****"
  puts params
  puts "****"
  
  blog_post = Post.create do |p|
    p.blog_post = params[:post][:blog_post]
    p.blog_media_url = params[:post][:blog_media_url]
  end

  @current_user.posts << blog_post
# not assigning posts to current user
  # @current_user.post.update_attributes(
  #   blog_post: params[:post][:blog_post],
  #   blog_media_url: params[:post][:blog_post]
  #   )
end