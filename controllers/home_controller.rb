require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

get '/' do #index
  @all_precious_things = PreciousThing.all()
  @all_sources = Source.all()
  @all_things = @all_precious_things + @all_sources
  erb(:"index")
end
