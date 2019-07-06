require 'pry'
File.open("aa.txt").each do |line|
  photos=Dir.entries("pics")
  element = line.split(',')
  for i in 0..element.length
    for j in 0.. photos.length
      # binding.pry
      if element[i] == photos[j]
        puts "Photo Available for #{element[i]}"
        $q=1
        break
      end
    end
  end    
end