def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1...11
end

def display_card_total(sum)
puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 deal_card 
 deal_card
  sum = deal_card + deal_card
 display_card_total(sum)
 sum 
end

def hit? (display_card_total)
  prompt_user
  if get_user_input == 'h'
    display_card_total = deal_card + display_card_total
  else 
     display_card_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
initial_round
hit?
end_game
end
end
    
