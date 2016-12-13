require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

# title, description, URL, and genre

# List all the videos
get "/" do
  @videos
  db = PG.connect(dbname: "checho")
  db.exec("SELECT * FROM videos;") do |result|
    pass if result.none?
    @videos = result.entries
  end
  erb :index
end

post "/" do
  title = @params["title"]
  description = @params["description"]
  url = @params["url"]
  genre = @params["genre"]
  db = PG.connect(dbname: "checho")
  url_embed = url.split("=") [1]
  db.exec("INSERT INTO videos (title, description, url, genre)
    VALUES ('#{title}', '#{description}', '#{url_embed}', '#{genre}');") do |result|
    redirect to ("/")
  end
end

not_found do
  erb :notfound
end
