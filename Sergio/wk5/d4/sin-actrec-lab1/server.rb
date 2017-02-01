require "pg"
require "sinatra"
require "sinatra/reloader"
require "pry"
require "active_record"
require "sinatra/activerecord"
require "./models/vehicle.rb"

# getting all instances of your model class
get "/vehicles" do
  @vehicles = Vehicle.all
  erb :vehicles
end

# creating a new instance of your model class
get "/vehicles/new" do
  #..
  # @vehicle = Vehicle.find(@params["id"])
  erb :vehicles_new
end

# getting an individual instance of your model class
get "/vehicles/:id" do
  #..
  erb :vehicles
end

post "/vehicles" do
  #..
  vehicle = Vehicle.new(name: params[:name], vehicle_type: params[:vehicle_type], make: params[:make], model: params[:model], max_speed: params[:max_speed], capacity: params[:capacity])
  vehicle.save
end
