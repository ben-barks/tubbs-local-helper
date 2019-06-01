require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')

get '/' do
  @precious = PreciousThing.main_index
  erb(:"index")
end
