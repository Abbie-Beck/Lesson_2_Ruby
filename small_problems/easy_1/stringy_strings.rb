def stringy(num, opt_num=1)
  nums = ''
  num.times { |idx| nums << (idx.even? ? "1" : "0") }
  opt_num == 1 ? nums : nums.tr("10", "01")
end



p stringy(5)
p stringy(18)
