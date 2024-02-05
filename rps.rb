require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

ROUNDS = 3

MOVES = {
  'rock' => { abbreviation: 'r', beats: ['scissors', 'lizard'] },
  'lizard' => { abbreviation: 'l', beats: ['spock', 'paper'] },
  'spock' => { abbreviation: 'sp', beats: ['scissors', 'rock'] },
  'paper' => { abbreviation: 'p', beats: ['spock', 'rock'] },
  'scissors' => { abbreviation: 'sc', beats: ['paper', 'lizard'] }
}

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
end

def get_name
  loop do
    prompt(messages('welcome'))
    name = gets.chomp.strip.capitalize

    return name unless name.strip.empty?
    prompt(messages('valid_name'))
  end
  name
end

def game_explainer
  loop do
    prompt(messages('game_explanation'))
    prompt(messages('type_to_exit'))
    answer = gets.chomp
    break if answer.downcase.include?('y')
  end 
end

def need_rules?
  prompt(messages('need_rules'))
  answer = gets.chomp

  if answer.downcase.start_with?('y')
    game_explainer
  end
end

def abbreviation_converter(choice)
  MOVES.each do |move, data|
    return move if data[:abbreviation] == choice
  end 
  nil
end 

def valid_choice(choice)
  MOVES.key?(choice)
end

def get_choice
  loop do
    prompt format(messages('choose_player'), choices: MOVES.keys.join(", "))
    player_choice = gets.chomp.downcase

    choice = abbreviation_converter(player_choice) || player_choice
    return choice if valid_choice(choice)
    prompt(messages('valid_choice'))
  end
  choice
end

def who_wins?(player1, player2)
  MOVES[player1][:beats].include?(player2)
end

def display_result(player, computer)
  if who_wins?(player, computer)
    prompt(messages('player_wins_round'))
  elsif who_wins?(computer, player)
    prompt(messages('computer_wins_round'))
  else
    prompt(messages('tie'))
  end
  sleep 3
  system "clear"
end

def score_keeper(player, computer, scores)
  if who_wins?(player, computer)
    scores[:player] += 1
  elsif who_wins?(computer, player)
    scores[:computer] += 1
  end
end

def play_again?
  prompt(messages('play_again?'))
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# main program code

name = get_name
system "clear"
prompt format(messages('greeting_name'), name: name)
prompt(messages('rules'))

need_rules?
system "clear"

scores = { player: 0, computer: 0 }

loop do
  choice = get_choice
  prompt(messages('abbreviations'))

  system "clear"
  computer_choice = MOVES.keys.sample

  prompt format(messages('player_v_computer'), player: choice,
                                               computer: computer_choice)

  display_result(choice, computer_choice)

  score_keeper(choice, computer_choice, scores)

  prompt format(messages('current_score'), player: scores[:player],
                                           opponent: scores[:computer])

  if scores[:player] == ROUNDS
    prompt(messages('player_wins'))
    break unless play_again?
  elsif scores[:computer] == ROUNDS
    prompt(messages('computer_wins'))
    break unless play_again?
  end
end

system "clear"
prompt format(messages('bye'), name: name)
