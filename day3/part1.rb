#!/usr/bin/ruby

lat, long = 0, 0
map = Hash.new(0)
map[ [0,0] ]+=1
$stdin.each_char do |char|
# directions for Santa on the Map. North and East are positive, just cuz.
  case char
    when ">"
      long += 1
    when "<"
      long -= 1
    when "^"
      lat  += 1
    when "v"
      lat  -= 1
  end 
  map[ [lat,long] ]+=1
end
puts map.length


