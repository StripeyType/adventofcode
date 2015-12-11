#!/usr/bin/ruby

order_total = 0
box_re = /(\d+)x(\d+)x(\d+)/
$stdin.each_line do |ln|
  m = box_re.match(ln)
  l = m[1].to_i
  w = m[2].to_i
  h = m[3].to_i
  volume = l*w*h
  top    = 2*l+2*w
  front  = 2*w+2*h
  side   = 2*l+2*h

  need = volume + [top,front,side].min 
  order_total += need 
end

puts
puts order_total
