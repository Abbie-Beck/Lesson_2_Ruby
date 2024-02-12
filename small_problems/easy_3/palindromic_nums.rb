def palindrome?(num)
  num.reverse! == num
end

def palindromic_number?(num)
  palindrome?(num)
end 

p palindromic_number?('0345430') == true
p palindromic_number?('123210') == false
p palindromic_number?('22') == true
p palindromic_number?('5') == true

# solution body is just palindrome?(number.to_s)

# further exploration: maybe just ask for a string
# my solution works for that but can't convert to_i