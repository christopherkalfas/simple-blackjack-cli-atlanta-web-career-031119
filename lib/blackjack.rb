def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end


def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  print display_card_total(card_total)
  card_total 
end 

def hit?(card_total)
  prompt_user
  case get_user_input
   
  when "s"
    card_total
  when "h"
    deal_card + card_total 
  
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?(card_total)
 display_card_total(card_total)
  case card_total
  when card_total <= 21
    hit?(card_total)
    display_card_total(card_total)
  when card_total >= 21
  end_game(card_total)
  end
   
  # while card_total <= 21
  #   hit?(card_total)
  #   display_card_total(card_total)
  # end
  # end_game
end 
