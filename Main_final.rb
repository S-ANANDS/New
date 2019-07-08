require 'pry'
require 'sqlite3'
photos=Dir.entries("pics")
db = SQLite3::Database.open('Photo.db')
db.execute 'CREATE TABLE IF NOT EXISTS Tasks(Id INTEGER PRIMARY KEY,Name VARCHAR)'
# db.execute " INSERT INTO Tasks(Id,Name) VALUES (NULL,'f') "
# db.execute " INSERT INTO Tasks(Id,Name) VALUES (NULL,'g') "
a=db.execute "SELECT * FROM Tasks"
a.each do |x|
  photos.each do |s|
    # binding.pry
    if x[1]!=s
      $q=0
    else
      $q=1
      break
    end
  end
  # binding.pry
  if $q==0
    puts "No Match => #{x[1]}"
  else
    puts "Match => #{x[1]}"
  end
end




