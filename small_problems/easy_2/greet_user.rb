def screaming
  puts "What is your name?"
  name = gets.chomp
  
  if name.include?('!')
    p "HELLO #{name.chop.upcase}, WHY ARE WE SCREAMING!?"
  else
    p "Hello, #{name.capitalize}!"
  end 
end 

screaming