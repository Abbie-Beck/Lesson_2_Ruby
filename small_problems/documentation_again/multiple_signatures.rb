a = %w(a b c d e)
# puts a.fetch(7). -  (commented out so that the others can run)
# error because nothing is at index 7 of this array, does not exist
puts a.fetch(7, 'beats me')
# 'beats me' because default value supplied is filled in 
puts a.fetch(7) { |index| index**2 }
# 49 because the block supplied is executed when and invalid 
# index is referenced 
