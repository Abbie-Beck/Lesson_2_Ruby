def xor?(one, two)
  if one == true && two == false
    true
  elsif two == true && one == false
    true
  else
    false
  end
end 

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
  