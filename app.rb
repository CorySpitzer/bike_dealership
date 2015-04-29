require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
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
  Dealership.new(name).save()
  erb(:success)
end
