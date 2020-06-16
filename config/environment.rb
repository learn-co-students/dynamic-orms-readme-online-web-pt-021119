require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/teams.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS teams (
  id INTEGER PRIMARY KEY,
  name TEXT,
  city TEXT,
  sport TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
