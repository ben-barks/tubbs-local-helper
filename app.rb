require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/controller.rb')
require_relative('controllers/source_controller.rb')
also_reload('models/*')

get '/' do
  erb( :index )
end
