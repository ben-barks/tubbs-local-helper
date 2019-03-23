# require_relative('./source.rb')
# require_relative('./precious_thing.rb')
# require_relative('../db/sql_runner.rb')
#
# class Combined
#
#   def initialize(options)
#     @id = options['id'].to_i if options['id'].to_i
#     @precious_thing_id = options['precious_things_id'].to_i
#     @source_id = options['source_id'].to_i
#   end
#
#   def save()
#    sql = 'INSERT INTO combined (precious_thing_id, source_id)
#            VALUES ($1, $2) RETURNING *'
#    values = [@precious_thing_id, @source_id]
#    combined_all = SqlRunner.run(sql, values)
#    @id = combined_all.first()['id'].to_i
#   end
#
#   def self.delete_all()
#     sql = 'DELETE FROM combined'
#     SqlRunner.run(sql)
#   end
#
#   def self.joined_index()
#     sql = 'SELECT precious_things.name, precious_things.description, precious_things.stock_quantity, precious_things.buying_cost, precious_things.selling_price, sources.name
#          FROM precious_things
#          FULL JOIN sources
#          ON sources.id = $1
#          WHERE precious_things.id = $2'
#     values = [@source_id, @precious_things_id]
#     joined_index_hashes = SqlRunner.run(sql, values)
#     result =joined_index_hashes.map { |hash| Combined.new(hash)}
#     return result
#   end
#
#
#
# end
