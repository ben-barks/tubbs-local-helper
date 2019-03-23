require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

get '/a-local-shop' do
  @all_precious_things = PreciousThing.all()
  erb(:"precious_things/index")
end

get '/a-local-shop/new' do
  erb(:"precious_things/new")
end