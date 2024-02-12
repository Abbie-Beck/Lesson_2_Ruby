def bonus(salary, bonus)
  p (bonus ? (salary / 2) : 0)
end 

bonus(4500, true)
bonus(4324, false)