
require('sinatra')
require('sinatra/reloader')
require('./lib/museum')
require('./lib/artwork')
require('pry')

also_reload('lib/**/*.rb')
require('pg')

DB = PG.connect({:dbname => "museum_tracker"})


get('/') do
	@museums = Museum.all
erb(:index)	
end

post('/') do
	name = params.fetch('name')
	@museum = Museum.new({:name => name, :id => nil})
	@museum.save
	redirect('/')
end

get('/museums/:id') do
	@museum = Museum.find(params.fetch('id').to_i)
	@artwork = Artwork.all
	erb(:museum)
end

post('/artworks/"id') do
	@museum  = Museum.find(params.fetch('id').to_i)
	description = params.fetch('description')
	@artwork = Artwork.new({:description => description, :museum_id => museum_id, :id =>nil})
	@artwork.save
	@museum = Museum.find(museum_id)
	redirect back
end

patch('/museums/:id') do
	name = params.fetch('name')
	@museum = Museum.find(params.fetch('id').to_i)
	@museum.update({:name => name})
	erb(:museum)
end

delete('/') do
  @museum = Museum.find(params.fetch("id").to_i)
  @museum.delete
  @museums = Museum.all
  erb(:index)
end

