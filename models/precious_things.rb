require_relative('./source.rb')

class PreciousThings

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @description = options['description']
    @stock_quantity = options['stock_quantity']
    @buying_cost = options['buying_cost'].to_i
    @selling_price = options['selling_price'].to_i
    # @source_id = options['source_id'].to_i
   end




end
