def repeat(string, pos_num)
  if pos_num >= 0
    pos_num.times {puts string}
  else 
    puts "not a positive number!"
  end 
end 

repeat('hello', 4)