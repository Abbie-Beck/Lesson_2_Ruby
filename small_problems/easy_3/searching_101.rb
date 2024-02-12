=begin
Write a program that solicits 6 numbers from the user, then prints a message 
that describes whether or not the 6th number appears amongst the first 5 numbers.
=end 

def searching
  first_five = []
  puts "Enter the 1st number:"
  first = gets.to_f
  first_five << first
  puts "Enter the 2nd number:"
  second = gets.to_f
  first_five << second
  puts "Enter the 3rd number:"
  third = gets.to_f
  first_five << third
  puts "Enter the 4th number:"
  fourth = gets.to_f
  first_five << fourth
  puts "Enter the 5th number:"
  fifth = gets.to_f
  first_five << fifth
  puts "Enter the last number:"
  last = gets.to_f
  
  if first_five.include?(last)
    puts "The number #{last} appears in #{first_five}."
  else 
    puts "The number #{last} does not appear in #{first_five}."
  end 
end 

searching
  