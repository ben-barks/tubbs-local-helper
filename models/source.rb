require_relative('./precious_thing.rb')
require_relative('../db/sql_runner.rb')
# require_relative('./combined.rb')

class Source
  attr_reader :id
  attr_accessor :name, :description

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
  end

  def save()
   sql = 'INSERT INTO sources (name, description)
           VALUES ($1, $2) RETURNING *'
   values = [@name, @description]
   source = SqlRunner.run(sql, values)
   @id = source.first()['id'].to_i
  end

  def self.delete_all()
    sql = 'DELETE FROM sources'
    SqlRunner.run(sql)
  end

  def delete()
    sql = 'DELETE FROM sources WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = 'SELECT * FROM sources'
    sources = SqlRunner.run(sql)
    result = sources.map { |prec| Source.new(prec) }
    return result
  end

  def update()
    sql = 'UPDATE sources
           SET (name, description) = ($1, $2)
           WHERE id = $3'
   values = [@name, @description, @id]
   SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = 'SELECT * FROM sources WHERE id = $1'
    values = [id]
    source_hashes = SqlRunner.run(sql, values).first
    return Source.new(source_hashes)
  end




end
