def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  new_card = rand(1..6)
  new_card
end

def display_card_total(current_total)
  # code #display_card_total here
  puts "Your cards add up to #{current_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  initial_total = card_1 + card_2
  display_card_total(initial_total)
  initial_total
end

def hit?(current_total)
  # code hit? here
  new_total = current_total
  prompt_user
  user_input = get_user_input
    if user_input == "h"
      new_card = deal_card
      new_total = new_total + new_card
      return new_total
    elsif user_input == "s"
      return new_total
    else invalid_command
      return new_total
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total < 21
    total = hit(total)
  end
  end_game(total)
end



