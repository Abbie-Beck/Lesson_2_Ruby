require 'yaml'
MESSAGES = YAML.load_file('madlibs.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
end

prompt(messages('get_noun'))
noun = gets.chomp 

prompt(messages('get_verb'))
verb = gets.chomp

prompt(messages('get_adjective'))
adjective = gets.chomp

prompt(messages('get_adverb'))
adverb = gets.chomp
  
prompt format(messages('sentence_1'), verb: verb, noun: noun, adverb: adverb, 
                                      adjective: adjective)
                                      
prompt format(messages('sentence_2'), verb: verb, noun: noun, adverb: adverb, 
                                      adjective: adjective)
                                      
prompt format(messages('sentence_3'), verb: verb, noun: noun, adverb: adverb, 
                                      adjective: adjective)