require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

set :views, Proc.new { File.join(root, "../views/precious_things") }

get '/a-local-shop' do
  @all_precious_things = PreciousThing.all()
  erb(:index)
end

get '/a-local-shop/new' do
  erb(:new)
end
