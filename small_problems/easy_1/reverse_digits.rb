def reversed_number(num)
  num.to_s.reverse.to_i
end


p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) #== 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003) #== 30021
p reversed_number(1) # == 1


=begin

I also stumbled upon a 2017 Medium article by Aram Anderson
that helped me understand a more mathematical solution 
to this problem:

def reversed_num(num)
 reversed = 0
 until num == 0
   last_digit = num % 10
   reversed = (reversed * 10) + last_digit
   num = num / 10
 end
 reversed
end

link to article:
https://medium.com/@aram987/reversing-a-number-in-ruby-without-
converting-to-a-string-e3d4d782c2a4

He finds in the end that the to_s approach is more efficient
but it did help my understanding of how to use modulo
and division to solve a more complex problem
=end