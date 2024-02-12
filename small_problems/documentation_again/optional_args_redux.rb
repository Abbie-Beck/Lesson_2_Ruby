require 'date'

puts Date.civil
# -4712-01-01
puts Date.civil(2016)
# 2016-01-01
puts Date.civil(2016, 5)
# 2016-05-01
puts Date.civil(2016, 5, 13)
# 2016-05-13
 
=begin

- could use Time.new to make it work in without requiring anything

1. 2024-01-15 (Apparently the older Date.civil defaults to -4712)
2. 2016-01-01
3. 2016-05-01
4. 2016-05-13

It defaults to the first of the year/month if no month or date 
given, and defaults to today if no month, year, or date given
=end