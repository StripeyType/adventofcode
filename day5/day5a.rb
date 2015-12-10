#!/usr/bin/ruby

nice = 0

$stdin.each_line do |ln|
  rule1 = /(..).*\1/
  rule2 = /(.).\1/
  if ( ln =~ rule1 ) and ( ln =~ rule2 )
    nice += 1
  end
end

puts nice
