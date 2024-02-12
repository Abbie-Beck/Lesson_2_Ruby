def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# prints 4, 5, 3, 6 for reasons described below

=begin

If you type in calling methods and go to that section in the 
documentation, default positional arguments is a subheading on
the same page. The documentation explains that Ruby will
fill in missing arguments with the ones you supply in such 
a case. 

It says that the first will be filled in by the first, and 
the last with the last (using a different example)
leaving the two in the middle, which are filled left to right
since the only other supplied value is 5 it is selected first
for the first middle value going left to right, the value at 
index 1 is set to 5 and the value at index 2 is set to 3, 
the value supplied by the default argument at that index

therefore it will print 4, 5, 3, and 6

=end