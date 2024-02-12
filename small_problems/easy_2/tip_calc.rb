def tip_calc 
  p "What is the bill?"
  initial_bill = gets.chomp.to_f 
  p "What is the tip percentage?"
  tip_percent = gets.chomp.to_f 
  
  tip = initial_bill * (tip_percent * 0.01)
  total_bill = initial_bill + tip
  
  puts "Tip is $#{format('%.2f', tip)}"
  puts "Total bill is $#{format('%.2f', total_bill)}"
end 

tip_calc