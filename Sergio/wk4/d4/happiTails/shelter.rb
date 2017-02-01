require "./animal.rb"
require "./client.rb"
require "pry"

class Shelter

  attr_accessor :animal, :client

  menu = {
    1 => "display all animals",
    2 => "display all clients",
    3 => "create an animal",
    4 => "create an client",
    5 => "facilitate client adopts an animal",
    6 => "facilitate client puts an animal up for adoption"
  }

  def display_animals
    #..
  end

  def display_clients
    #..
  end

  def create_animal
    #..
    puts "function animal"
    animal = Animal.new animal_name, animal_age, animal_gender, animal_species, animal_toys
  end

  def create_client
    #..
  end

  def adopt_animal
    #..
  end

  def animal_for_adoption
    #..
  end

  # Prompt
  puts "Choose an option..."
  menu.each do |key, value|
    puts "#{key}. #{value}"
  end
  option = gets.chomp
  puts option
  case option
  when "1"
    display_animals
  when 2
    display_clients
  when "3"
    puts "Enter animal name"
    @animal_name = gets.chomp
    puts "Enter animal age"
    @animal_age = gets.chomp
    puts "Eneter animal gender"
    @animal_gender = gets.chomp
    puts "Enter animal species"
    @animal_species = gets.chomp
    puts "Enter animal toy (separated by ,)"
    toy = gets.chomp
    @animal_toys = toy.split(",")
    create_animal
  when 4
    create_client
  when 5
    adopt_animal
  when 6
    animal_for_adoption
  end


end
