def num_of_chars
  puts "Please write word or multiple words"
  input = gets.chomp
  
  chars = input.delete(' ').length
  puts "There are #{chars} characters in '#{input}'."
end 

num_of_chars