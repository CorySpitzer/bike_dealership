require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
require('./lib/vehicle')
also_reload('lib/*.rb')

get("/") do
  erb(:index)
end

get("/dealerships") do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealerships/new') do
  erb(:dealership_bike_form)
end

post('/dealership_add_success') do
  name = params.fetch('dealer-name')
  dealership = Dealership.new(name)
  dealership.save()
  erb(:success)
end

get('/vehicles') do
  @vehicles = Vehicle.all()
  erb(:vehicles)
end

post('/vehicles') do
  make = params.fetch("make")
  model = params.fetch("model")
  year = params.fetch("year")
  vehicle = Vehicle.new(make, model, year)
  vehicle.save()
  dealer =
  dealer.add_bike(vehicle)
  erb(:success)
end

get('/vehicles/new') do
  erb(:vehicles_form)
end

get('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

get('/vehicles/:id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i())
  erb(:vehicle)
end
