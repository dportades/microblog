require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "sinatra/base"
require "rack-flash"
require "./models"

set :database, "sqlite3:microblog.sqlite3"
enable :sessions
use Rack::Flash, :sweep => true
set :sessions => true

def set_current_user
  if session[:user_id]
    User.find(session[:user_id])
    # @current_user = User.find(session[:user_id])
  end
end

get '/' do
  erb :sign_in
end

get '/home' do
  erb :home
end

get '/profile' do
  erb :profile
end

get '/settings' do
  erb :settings
end

get '/error' do
  erb :error
end

get '/sign_out_confirm' do
  erb :sign_out_confirm
end

get '/sign_up' do
  erb :sign_up
end

post '/in' do
  email = params[:user][:email]
  password = params[:user][:password]

  @user = User.find_by(email: email)

  if @user.password == password
    flash[:notice] = 'You’ve been signed in successfully.'
    session[:user_id] = @user.id
    redirect '/home'
  else
    flash[:alert] = "There was a problem with the log in."
    redirect '/error'
  end
end

post '/up' do
  puts "****"
  puts params
  puts "****"
  User.create do |u|
    u.fname = params[:user][:fname]
    u.lname = params[:user][:lname]
    u.username = params[:user][:username]
    u.email = params[:user][:email]
    u.password = params[:user][:password]
    u.location = params[:user][:location]
  end
  # if signup was successful, redirect to /home
end

post '/sign_out' do
  puts "****"
  puts session[:user_id]
  puts "*****"
  # session.clear
  session[:user_id] = nil
  puts "*****"
  puts session[:user_id]
  puts "*****"
  flash[:notice] = 'You have successfully signed out!'
  redirect '/sign_out_confirm'
end

