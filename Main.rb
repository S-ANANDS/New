require 'pry'
require 'sqlite3'
photos=Dir.entries("pics")
db = SQLite3::Database.open('Photo.db')
db.execute 'CREATE TABLE IF NOT EXISTS Tasks(Id INTEGER PRIMARY KEY,Name VARCHAR)'
# db.execute " INSERT INTO Tasks(Id,Name) VALUES (NULL,'aa') "
a=db.execute "SELECT * FROM Tasks"
for i in 0..(a.length)
  for j in 0..(photos.length)
      # binding.pry
    if a[i][1]==photos[j]
      puts "Photo Available For #{photos[j]}"   
      break
    end
  end
end
# binding.pry