
require 'httparty'
require 'pry'

# https://www.omdbapi.com/?s=jaws

result = HTTParty.get("https://www.omdbapi.com/?s=jaws")
# binding.pry
# puts result

search_array = result["Search"]
search_array.each do |movie|
  movie.each do |key, value|
    puts key + " " + value
  end
end
