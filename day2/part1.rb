#!/usr/bin/ruby

order_total = 0
box_re = /(\d+)x(\d+)x(\d+)/
$stdin.each_line do |ln|
  m = box_re.match(ln)
  l = m[1].to_i
  w = m[2].to_i
  h = m[3].to_i
  top   = l*w
  front = w*h
  side  = l*h

  need = (2 * (top + front + side)) + [top,front,side].min
  order_total += need 
end

puts
puts order_total
