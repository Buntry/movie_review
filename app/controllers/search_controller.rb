require_relative "application_controller"
# Search Controller
class ApplicationController < Sinatra::Base
	
	post '/search' do
		@movies = Tmdb::Movie.find(params[:query])
		erb :"movies/index"
  	end
	
end