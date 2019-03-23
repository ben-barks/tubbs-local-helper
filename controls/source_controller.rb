require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/precious_thing.rb')
require_relative('./models/source.rb')
also_reload('./models/*')

get '/a-local-shop/sources' do
  @all_sources = Source.all()
  erb(:sources)
end
