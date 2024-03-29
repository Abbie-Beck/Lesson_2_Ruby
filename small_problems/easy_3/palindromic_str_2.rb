def palindrome?(input)
  input.reverse == input
end

def real_palindrome?(input)
  input = input.downcase.delete("^a-z0-9")
  palindrome?(input)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false