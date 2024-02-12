a = [1, 4, 8, 11, 15, 19]

# find first element whose value exceeds 8

greater_than_eight = a.bsearch { |x| x > 8 }
p greater_than_eight