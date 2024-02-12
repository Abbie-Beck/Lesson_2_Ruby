def triangle(num)
  stars = 1
  spaces = num - 1
  
  num.times do 
    puts (" " * spaces) + ("*" * stars)
    stars += 1
    spaces -= 1
  end 
end 

triangle(5)
