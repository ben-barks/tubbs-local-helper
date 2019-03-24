require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/controller.rb')
require_relative('controllers/source_controller.rb')
require_relative('controllers/home_controller.rb')
also_reload('models/*')

set :views, Proc.new { File.join(root, "views") }

get '/' do
  # @all_things = PreciousThing.all() + Source.all()
  # @all_things.main_index()
  # for thing in @all_things
  #   things = thing.main_index().map { |thing| return thing.to_s }
  # end
  erb( :index )
end
