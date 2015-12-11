#!/usr/bin/ruby

display = Array.new(1000) { Array.new(1000) }
display[0..999][0..999].fill(0)

command_re = /(on|off|toggle)/
coords_re  = /(\d+),(\d+) through (\d+),(\d+)/
$stdin.each_line do |ln|
  command = command_re.match(ln)[1]
  coords  = coords_re.match(ln)[1..4]

  x1 = coords[0].to_i
  y1 = coords[1].to_i
  x2 = coords[2].to_i
  y2 = coords[3].to_i

  case command
  when 'on'
    for x in x1..x2
      for y in y1..y2
        display[x][y] = 1
      end
    end
  when 'off'
    for x in x1..x2
      for y in y1..y2
        display[x][y] = 0
      end
    end
  when 'toggle'
    for x in x1..x2
      for y in y1..y2
        display[x][y] = 1 - display[x][y].to_i
      end
    end
  end
end

total = 0
for x in 0..999
  for y in 0..999
    total += display[x][y].to_i
  end
end
puts total
