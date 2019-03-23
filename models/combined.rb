require_relative('./source.rb')
require_relative('./precious_thing.rb')
require_relative('../db/sql_runner.rb')

class Combined

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @precious_name = options['precious_name']
    @precious_description = options['precious_description']
    @precious_stock = options['precious_stock'].to_i
    @precious_cost = options['precious_cost'].to_i
    @precious_price = options['precious_price'].to_i
    @source_name = options['source_name']
  end






end
