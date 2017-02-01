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

# Insert a new video
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

# Display one video
get "/edit/:id" do
  id = params["id"]
  db = PG.connect(dbname: "checho")
  db.exec("SELECT * FROM videos WHERE id = #{id};") do |result|
    pass unless result.one?
    @video = result.entries[0]
    erb :edit_video
  end
end

# Edit a video
post "/edit/:id" do
  id = params["id"]
  title = @params["title"]
  description = @params["description"]
  url = @params["url"]
  url_embed = url.split("=") [1]
  genre = @params["genre"]
  db = PG.connect(dbname: "checho")
  db.exec("UPDATE videos SET title = '#{title}', description = '#{description}', url = '#{url_embed}',
          genre = '#{genre}' WHERE id = #{id};") do |result|
    redirect to ("/")
    end
end

not_found do
  erb :notfound
end
