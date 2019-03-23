require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

get '/sources' do
  @all_sources = Source.all()
  erb(:"sources/index")
end
