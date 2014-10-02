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
    @current_user = User.find(session[:user_id])
  end
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

get '/' do
  erb :sign_in
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