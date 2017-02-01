# Create an class that one of your favorite existing web applications might have in their codebase

class Movie

  attr_accessor :title, :genre, :duration, :year, :reproductions

  def initialize(title, genre, duration, year, reproductions)
    @title = title
    @genre = genre
    @duration = duration
    @year = year
    @reproductions = reproductions
  end

  def play_movie
    @reproductions += 1
  end

end
