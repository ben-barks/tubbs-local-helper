require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/controller.rb')
require_relative('controllers/source_controller.rb')
require_relative('controllers/home_controller.rb')
also_reload('models/*')

set :views, Proc.new { File.join(root, "views") }

get '/' do
  erb( :index )
end
