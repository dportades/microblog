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

get '/home' do
  erb :home
end