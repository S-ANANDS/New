require 'pry'
require 'sqlite3'
user_data=gets.chomp
db = SQLite3::Database.open('photos.db')
a=Dir.entries("pics")
# binding.pry
for i in 0..a.length - 1
  if a[i] == user_data
    puts "Photo Available"
    $q=0
    break
  else
    $q=1
  end
end
if $q==1 then puts "No Photo Available" end
    