require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

# https://www.omdbapi.com/?s=jaws
get "/" do
  @movie_name = params[:movie]
  @result = {}
  @search_array = []
  if @movie_name
    @result = HTTParty.get("https://www.omdbapi.com/?s=" + @movie_name)
    @search_array = @result["Search"]
  end

  erb :index
end

get "/movie/:movie" do
  @movie_name = params[:movie]
  @result = {}
  @result = HTTParty.get("https://www.omdbapi.com/?t=" + @movie_name)

  erb :movie
end
