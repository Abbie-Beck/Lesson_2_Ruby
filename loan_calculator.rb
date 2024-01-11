require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')
LANGUAGE = 'es' # option for 'es'
MONTHS = 12

def messages(message, lang=LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_num?(num)
  (num.to_i.to_s == num) || (num.to_f.to_s == num)
end

def valid_dollar?(number)
  (number.strip.empty?) ||
    (number.to_f <= 0) ||
    (valid_num?(number) == false)
end

def valid_percentage?(percent)
  (percent.strip.empty?) ||
    (percent.to_f < 0) ||
    (valid_num?(percent) == false)
end

def valid_time?(time)
  (time.strip.empty?) ||
    (time.to_i <= 0) ||
    (valid_num?(time) == false)
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

def get_amount
  loop do
    prompt(messages('get_loan_amount'))
    prompt(messages('loan_example'))
    amount = gets.chomp

    return amount unless valid_dollar?(amount)
    prompt(messages('valid_number'))
  end
  amount
end

def get_interest_rate
  loop do
    prompt(messages('get_interest_rate'))
    prompt(messages('interest_example'))
    interest_rate = gets.chomp

    return interest_rate unless valid_percentage?(interest_rate)
    prompt(messages('valid_number'))
  end
  interest_rate
end

def get_loan_duration
  loop do
    prompt(messages('loan_duration_years'))
    years = gets.chomp

    return years unless valid_time?(years)
    prompt(messages('valid_number'))
  end
  years
end

def monthly_cost(loan_amount, interest_rate, duration_in_years)
  annual_interest = interest_rate.to_f / 100
  monthly_interest = annual_interest / MONTHS
  months = duration_in_years.to_f * MONTHS

  if interest_rate == '0'
    rate = (loan_amount.to_f / months)
  else
    rate = loan_amount.to_f *
           (monthly_interest /
           (1 - ((1 + monthly_interest)**(-months))))
  end
  rate
end

def calc_again?
  prompt(messages('calc_again'))
  answer = gets.chomp
  answer.downcase.start_with?('y', 's')
end

user_name = get_name
system 'clear'
prompt format(messages('greet_name'), name: user_name)

loop do
  amount = get_amount
  interest_rate = get_interest_rate
  years = get_loan_duration
  system 'clear'
  monthly_rate = monthly_cost(amount, interest_rate, years)
  monthly_rate = format("%.2f", monthly_rate)
  amount = format("%.2f", amount)
  prompt format(messages('month_pay'), amount: amount, years: years,
                                       apr: interest_rate, rate: monthly_rate)

  break unless calc_again?
end

system 'clear'
prompt format(messages('goodbye'), name: user_name)
