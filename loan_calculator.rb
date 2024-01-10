require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')
LANGUAGE = 'en' # option for 'es'
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

    return amount unless (amount.strip.empty?) ||
                         (amount.to_f < 0) ||
                         (valid_num?(amount) == false)
    prompt(messages('valid_number'))
  end
  amount
end

def get_interest_rate
  loop do
    prompt(messages('get_interest_rate'))
    prompt(messages('interest_example'))
    int_rate = gets.chomp

    return int_rate unless (int_rate.strip.empty?) ||
                           (int_rate.to_f <= 0) ||
                           (valid_num?(int_rate) == false)
    prompt(messages('valid_number'))
  end
  int_rate
end

def get_loan_duration
  loop do
    prompt(messages('loan_duration_years'))
    years = gets.chomp

    return years unless (years.strip.empty?) ||
                        (years.to_i <= 0) ||
                        (valid_num?(years) == false)
    prompt(messages('valid_number'))
  end
  years
end

def monthly_cost(loan_amount, int_rate, duration_in_years)
  annual_interest = int_rate.to_f / 100
  monthly_interest = annual_interest / MONTHS
  months = duration_in_years.to_i * MONTHS

  rate = loan_amount.to_f *
         (monthly_interest /
         (1 - ((1 + monthly_interest)**(-months))))
  rate.round(2)
end

user_name = get_name
system 'clear'
prompt format(messages('greet_name'), name: user_name)

loop do
  amount = get_amount
  interest_rate = get_interest_rate
  years = get_loan_duration
  system 'clear'
  monthly_payment = monthly_cost(amount, interest_rate, years)
  prompt format(messages('month_pay'), monthly: monthly_payment)

  prompt(messages('calc_again'))
  answer = gets.chomp
  system 'clear'

  break unless answer.downcase.start_with?('y', 's')
end

prompt format(messages('goodbye'), name: user_name)
