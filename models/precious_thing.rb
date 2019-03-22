require_relative('./source.rb')
require_relative('../db/sql_runner.rb')

class PreciousThing

  attr_reader :id, :name, :description, :stock_quantity, :buying_cost, :selling_price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock_quantity = options['stock_quantity'].to_i
    @buying_cost = options['buying_cost'].to_i
    @selling_price = options['selling_price'].to_i
    # @source_id = options['source_id'].to_i
   end

   def save()
    sql = 'INSERT INTO precious_things (name, description, stock_quantity, buying_cost, selling_price)
            VALUES ($1, $2, $3, $4, $5) RETURNING *'
    values = [@name, @description, @stock_quantity, @buying_cost, @selling_price]
    preciosa = SqlRunner.run(sql, values)
    @id = preciosa.first()['id'].to_i
   end

   def self.delete_all()
     sql = 'DELETE FROM precious_things'
     SqlRunner.run(sql)
   end

   def delete()
     sql = 'DELETE FROM precious_things WHERE id = $1'
     values = [@id]
     SqlRunner.run(sql, values)
   end

   def self.all()
     sql = 'SELECT * FROM precious_things'
     SqlRunner.run(sql)
   end

   
end
