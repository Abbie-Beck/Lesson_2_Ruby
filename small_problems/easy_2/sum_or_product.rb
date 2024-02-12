def get_integer
 loop do
    puts "Please enter an integer greater than 0: "
    integer = gets.chomp.to_i
    return integer if integer > 0
    puts "Your number must be a nonzero positive integer."
  end
  integer
end 

def get_operation
  loop do 
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp.downcase
    return operation if %w(s p).include?(operation)
    puts "Please select 's' or 'p'."
  end 
  operation
end 


integer = get_integer
operation = get_operation
  
sum = (1..integer).reduce(:+)
product = (1..integer).reduce(:*)
  
if operation == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}."
end
