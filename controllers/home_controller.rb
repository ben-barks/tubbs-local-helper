require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

get '/' do
  @precious = PreciousThing.main_index
  erb(:"index")
end
