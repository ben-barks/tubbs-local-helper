require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
also_reload('../models/*')

set :views, Proc.new { File.join(root, "../views") }

get '/a-local-shop' do #index
  @all_precious_things = PreciousThing.all()
  erb(:"precious_things/index")
end

get '/a-local-shop/new' do #new
  @all_precious_things = PreciousThing.all()
  @all_sources = Source.all()
  erb(:"precious_things/new")
end

get '/a-local-shop/:id' do #show
  @all_precious_things = PreciousThing.find(params[:id])
end

post '/a-local-shop' do #create
  @all_precious_things = PreciousThing.new(params)
  @all_precious_things.save()
  erb(:"precious_things/create")
end
