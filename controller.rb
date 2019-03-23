require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/precious_thing.rb')
require_relative('./models/source.rb')
also_reload('./models/*')

get '/a-local-shop' do
  @all_precious_things = PreciousThing.all()
  erb(:index)
end

get '/a-local-shop' do
  erb(:new)
end
