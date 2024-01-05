require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'es'

def messages(message, lang=LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  (num.to_i.to_s == num) || (num.to_f.to_s == num)
end

def get_name
  loop do
    prompt(messages('welcome'))
    user_name = gets.chomp.capitalize

    return user_name unless user_name.strip.empty?
    prompt(messages('valid_name'))
  end
  user_name
end

def get_op
  loop do
    prompt(messages('operator_prompt'))
    operator = gets.chomp

    return operator if %w(1 2 3 4).include?(operator)
    prompt(messages('valid_operator'))
  end
  operator
end

def get_nums
  loop do
    prompt(messages('get_valid_num'))
    number = gets.chomp
    return number if valid_number?(number)
    prompt(messages('invalid_number'))
  end
  number
end

def no_zero_div?(num2, op)
  num2.to_i == 0 && op == '4'
end

def op_to_message(op)
  case op
  when '1'
    return (messages('adding'))
  when '2'
    return (messages('subtracting'))
  when '3'
    return (messages('multiplying'))
  when '4'
    return (messages('dividing'))
  end
  op
end

def result(operator, number1, number2)
  case operator
  when '1'
    return number1.to_f + number2.to_f
  when '2'
    return number1.to_f - number2.to_f
  when '3'
    return number1.to_f * number2.to_f
  when '4'
    return number1.to_f / number2.to_f
  end
  operator
end

user_name = get_name
system 'clear'

prompt format(messages('hello_name'), name: user_name)

loop do
  prompt(messages('first_number'))
  number1 = get_nums

  prompt(messages('second_number'))
  number2 = get_nums
  system 'clear'
  operator = get_op

  prompt format(messages('op_message'), operation: op_to_message(operator))
  system 'clear'
  user_result = result(operator, number1, number2)
  if no_zero_div?(number2, operator)
    prompt(messages('no_zero_division'))
  else
    prompt format(messages('result'), result: user_result)
  end

  prompt(messages('calculate_again?'))
  answer = gets.chomp
  system 'clear'
  break unless answer.downcase.start_with?('y', 's')
end

system 'clear'
prompt format(messages('goodbye'), name: user_name)
