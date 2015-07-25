require "require_all" 
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'pry'

require_relative "../../config/environment"
require_all "app/models/*.rb"
require_all "app/controllers/*.rb"

class ApplicationController < Sinatra::Base

  enable :sessions
    
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get "/" do
    "Hello World"
  end
  
end
