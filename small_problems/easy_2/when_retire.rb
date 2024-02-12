def retirement
  puts "What is your age?: "
  current_age = gets.to_i
  puts "At what age do you wish to retire?: "
  retirement_age = gets.to_i
  
  year = Time.now.year
  years_to_work = retirement_age - current_age
  retirement_year = year + years_to_work
  
  puts "It's #{year}. You will retire in #{retirement_year}."
  puts "You only have #{years_to_work} years of work to go!"
end 

retirement
  