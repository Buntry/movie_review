require_relative "application_controller"

class ApplicationController < Sinatra::Base
	
	post '/search' do
		@movies = Tmdb::Movie.find(params[:query])
		erb :"movies/index"
  	end
	
end