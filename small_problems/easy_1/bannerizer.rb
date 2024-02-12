def print_in_box(string)
  length = string.size
  top_bottom = "+ " + ("-" * length) + " +"
  second_fifth = "| " + (" " * length) + " |"
  text_line = "| " + string.center(length) + " |"
  
  puts top_bottom
  puts second_fifth
  puts text_line
  puts second_fifth
  puts top_bottom
end 


print_in_box('yeehaw')