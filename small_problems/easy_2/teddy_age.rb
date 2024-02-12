def teddy_age(name='Teddy')
  puts "What is your name?"
  user_name = gets.chomp.capitalize
  name = user_name unless user_name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end 

teddy_age