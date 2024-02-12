=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).
=end

def multiply(num1, num2)
  num1 * num2
end  

def to_nth_power(num, power)
  multiply(num, 1) ** power.abs
end 


p to_nth_power(5, 5)
p to_nth_power(8, 8)
