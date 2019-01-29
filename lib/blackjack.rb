def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  case
    when "h"
     card_total = card_total + deal_card
    when "s"
      card_total = card_total
    else
      invalid_command
    end
  card_total
end

def invalid_command
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
