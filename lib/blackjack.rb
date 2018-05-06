def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(integer)
  puts "Sorry, you hit #{integer}. Thanks for playing!"

end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
    input = get_user_input

  if input == "s"
    total
  elsif input == "h"
    card = deal_card
    total += card
  else
    invalid_command
    prompt_user
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
  hit1 = hit?(initial_round)
  while hit1 <= 21 do
        new_hit = hit?(hit1)
        hit1 = new_hit
  end
  end_game(hit1)
end
