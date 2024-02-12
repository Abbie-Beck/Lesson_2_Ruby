def prompt(message)
  puts "=> #{message}"
end

def get_nums
  loop do
    num = gets.to_f
    return num unless num <= 0.0
    prompt("Make sure you enter a positive integer")
  end 
  num
end
  
def arithmetic(num1, num2)
  addition = (num1 + num2).round(2)
  subtraction = (num1 - num2).round(2)
  multiplication = (num1 * num2).round(2)
  division = (num1 / num2).round(2)
  remainder = (num1 % num2).round(2)
  power = (num1 ** num2).round(2)
  
  prompt("#{num1} + #{num2} = #{addition}")
  prompt( "#{num1} - #{num2} = #{subtraction}")
  prompt( "#{num1} * #{num2} = #{multiplication}")
  prompt( "#{num1} / #{num2} = #{division}")
  prompt( "#{num1} % #{num2} = #{remainder}")
  prompt( "#{num1} ** #{num2} = #{power}")
end

prompt("Please enter a positive integer: ")
int1 = get_nums
prompt("Please enter a second positive integer: ")
int2 = get_nums

arithmetic(int1, int2)