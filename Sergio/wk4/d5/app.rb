require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get "/" do
  @movie_name = params[:movie]
  # binding.pry
  @result = {}
  if @movie_name
    @result = HTTParty.get("http://omdbapi.com/?t="+@movie_name)
    # @ @result
  end

  erb :index
end


#<HTTParty::Response:0x7fd71591b678 parsed_response=
# {"Title"=>"Once", "Year"=>"2007", "Rated"=>"R", "Released"=>"15 Jun 2007", "Runtime"=>"85 min",
#   "Genre"=>"Drama, Music, Romance", "Director"=>"John Carney", "Writer"=>"John Carney",
#   "Actors"=>"Glen Hansard, Markéta Irglová, Hugh Walsh, Gerard Hendrick",
#   "Plot"=>"A modern-day musical about a busker and an immigrant and their eventful week in Dublin,
#   as they write, rehearse and record songs that tell their love story.",
#   "Language"=>"English, Czech", "Country"=>"Ireland",
#   "Awards"=>"Won 1 Oscar. Another 21 wins & 29 nominations.",
#   "Poster"=>"https://images-na.ssl-images-amazon.com/images/M/MV5BMTEwNjExOTc2MTJeQTJeQWpwZ15BbWU3MDYzODQ3NDE@._V1_SX300.jpg",
#   "Metascore"=>"88", "imdbRating"=>"7.9", "imdbVotes"=>"93,018", "imdbID"=>"tt0907657", "Type"=>"movie",
#   "Response"=>"True"},
#   @response=#<Net::HTTPOK 200 OK readbody=true>, @headers={"date"=>["Mon, 12 Dec 2016 03:35:19 GMT"],
#   "content-type"=>["application/json; charset=utf-8"], "transfer-encoding"=>["chunked"],
#   "connection"=>["close"], "set-cookie"=>["__cfduid=d433913ac1d302c0fc4e3b8bebed5414f1481513719;
#     expires=Tue, 12-Dec-17 03:35:19 GMT; path=/; domain=.omdbapi.com; HttpOnly"],
#     "cache-control"=>["public, max-age=3276"], "expires"=>["Mon, 12 Dec 2016 04:29:52 GMT"],
#     "last-modified"=>["Mon, 12 Dec 2016 03:29:52 GMT"], "vary"=>["*"], "x-aspnet-version"=>["4.0.30319"],
#     "x-powered-by"=>["ASP.NET"], "access-control-allow-origin"=>["*"], "server"=>["cloudflare-nginx"],
#     "cf-ray"=>["30fe2027d7134d52-PER"]}>
