require_relative('./source.rb')

attr_reader :id, :description, :stock_quantity, :buying_cost, :selling_price

class PreciousThing

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @description = options['description']
    @stock_quantity = options['stock_quantity']
    @buying_cost = options['buying_cost'].to_i
    @selling_price = options['selling_price'].to_i
    # @source_id = options['source_id'].to_i
   end

   def save()
    sql = 'INSERT INTO precious_things (description, stock_quantity, buying_cost, selling_price)
            VALUES ($1, $2, $3, $4) RETURNING *'
    values = [@description, @stock_quantity, @buying_cost, @selling_price]
    preciosa = SqlRunner.run(sql, values)
    @id = preciosa.first()['id'].to_i
   end


end
