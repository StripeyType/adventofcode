#!/usr/bin/ruby

santa_lat, santa_long = 0, 0
robot_lat, robot_long = 0, 0
map = Hash.new(0)
map[ [0,0] ]+=1
santa_p = true
$stdin.each_char do |char|
# directions for Santa on the Map. North and East are positive, just cuz.
  if santa_p
    case char
      when ">"
        santa_long += 1
      when "<"
        santa_long -= 1
      when "^"
        santa_lat  += 1
      when "v"
        santa_lat  -= 1
    end 
  map[ [santa_lat,santa_long] ]+=1
  else
    case char
      when ">"
        robot_long += 1
      when "<"
        robot_long -= 1
      when "^"
        robot_lat  += 1
      when "v"
        robot_lat  -= 1
    end
  map[ [robot_lat,robot_long] ]+=1
  end
  santa_p = !santa_p
end
puts map.length


