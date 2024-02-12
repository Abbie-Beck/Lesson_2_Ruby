SQMETERS_TO_SQFEET = 10.7639

def room_size_converter
  puts "What is the length of your room in meters?"
  length = gets.chomp.to_f
  puts "What is the width in meters?"
  width = gets.chomp.to_f 
  
  square_meters = length * width
  square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)
  
  p "The area of the room is #{square_meters} " + \
  "square meters (#{square_feet} square feet)."
end

room_size_converter