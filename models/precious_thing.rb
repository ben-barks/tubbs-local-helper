# require_relative('./combined.rb')
require_relative('../db/sql_runner.rb')
require_relative('./source.rb')

class PreciousThing

  attr_reader :id
  attr_accessor :name, :description, :stock_quantity, :buying_cost, :selling_price, :source_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock_quantity = options['stock_quantity'].to_i
    @buying_cost = options['buying_cost'].to_i
    @selling_price = options['selling_price'].to_i
    @source_id = options['source_id'].to_i
   end

   def save()
    sql = 'INSERT INTO precious_things (name, description, stock_quantity, buying_cost, selling_price, source_id)
            VALUES ($1, $2, $3, $4, $5, $6) RETURNING *'
    values = [@name, @description, @stock_quantity, @buying_cost, @selling_price, @source_id]
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
     precious_things = SqlRunner.run(sql)
     result = precious_things.map { |prec| PreciousThing.new(prec) }
     return result
   end

   def update()
     sql = 'UPDATE precious_things
            SET (name, description, stock_quantity, buying_cost, selling_price, source_id) = ($1, $2, $3, $4, $5, $6)
            WHERE id = $7'
    values = [@name, @description, @stock_quantity, @buying_cost, @selling_price, @source_id, @id]
    SqlRunner.run(sql, values)
   end

   def self.find(id)
     sql = 'SELECT * FROM precious_things WHERE id = $1'
     values = [id]
     precious_hashes = SqlRunner.run(sql, values).first
     return PreciousThing.new(precious_hashes)
   end

   def stock_warning()
     if @stock_quantity < 2 && @stock_quantity > 0
       return "  -  Just the one precious remains!"
     elsif @stock_quantity == 0
       return "  -  Send Andrew for more precious things"
     end
   end

   def main_index()
     sql = 'SELECT sources.name, precious_things.name, precious_things.description, precious_things.stock_quantity, precious_things.buying_cost, precious_things.selling_price FROM sources
          INNER JOIN precious_things
          ON precious_things.source_id = sources.id
          ORDER BY sources.id'
    result = SqlRunner.run(sql, values)
    return result
   end

end
