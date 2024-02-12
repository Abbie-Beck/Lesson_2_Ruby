array = [1, 2, 3]

def multiply(num1, num2)
  num1 * num2
end 

p multiply(array, 3)
p array

=begin
When we add an array, it outputs 1, 2, 3 three times, within a 
one-dimensional array. it is working in the same way that
multiplication with a string and a number work, 
the documentation says:

array * n -> new_array
When non-negative argument Integer n is given, 
returns a new Array built by concatenating the n copies of self:
=end