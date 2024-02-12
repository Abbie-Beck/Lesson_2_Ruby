def palindrome?(input)
  input.reverse! == input
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?([3, 4, 5, 4, 3]) == true

# solution accepts array or string
