require_relative('./precious_thing.rb')
require_relative('../db/sql_runner.rb')

class Source
  attr_reader :id
  attr_accessor :name, :description

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
  end

  






end
