def negative(num)
  (num <= 0) ? num : -num
end 

p negative(80) == -80
p negative(0) == 0
p negative(-30) == -30