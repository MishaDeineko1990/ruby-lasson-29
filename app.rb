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
	@barbers = Barber.all
	erb :index
end