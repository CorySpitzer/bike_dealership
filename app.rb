require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
also_reload('lib/*.rb')

get("/") do
  erb(:index)
end
