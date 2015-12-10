#!/usr/bin/ruby

nice = 0

first_re  = /^.*[aeiou].*[aeiou].*[aeiou].*$/
second_re = /^.*(.)\1.*$/
third_re  = /^.*(ab)|(cd)|(pq)|(xy).*$/

$stdin.each_line do |ln|
  if (ln =~ first_re) and (ln =~ second_re) and (not (ln =~ third_re))
    nice += 1
  end
end

puts nice
