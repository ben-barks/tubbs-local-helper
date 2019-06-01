require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      # db = PG.connect({dbname: 'tubbs_local_helper', host: 'localhost'})
      db = PG.connect( {dbname: 'dcl4a8uh24ep9i',
      host: 'ec2-54-235-114-242.compute-1.amazonaws.com',
      port: 5432, user: 'cgckojmkfianos', password: 'e1ec5d87b0f9624afc9f593469c34b841213a1882fa87739ec7c40437718c151'})
      db.prepare('query', sql)
      result = db.exec_prepared('query', values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
