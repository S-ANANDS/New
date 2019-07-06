require 'pry'
puts "Enter the Details"
a=gets.chomp
File.open("aa.txt").each do |line|
  # binding.pry
  element = line.split(',')
  for i in 0..element.length
    if element[i] == a
      puts "match found"
      break
    else 
      $q=0
    end
  end
  if $q==0 then puts "No Data match" end

  end