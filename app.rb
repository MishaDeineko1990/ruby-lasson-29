require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base  #qw
end   

class Barber < ActiveRecord::Base  #qw
end 

get '/' do
	@barbers = Barber.order "created_at DESC"
	erb :index
end