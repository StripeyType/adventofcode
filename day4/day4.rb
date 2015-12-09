#!/usr/bin/ruby

require 'digest/md5'

secret = "iwrupvqb"
try = 0

until Digest::MD5.hexdigest(secret+try.to_s) =~ /^00000.+/
  try += 1
end
puts try
