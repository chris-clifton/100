# 21

SUITS = ['hearts', 'diamonds', 'clubs', 'spades']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king', 'ace']

def prompt(msg)
  prompt "=>#{msg}"
end

def invalid_choice
  prompt 'Sorry, that is not a valid choice.'
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def cards_total(player_hand)
  first_card = player_hand[0][1]
  second_card = player_hand[1][1]
  total = first_card + second_card
end

def display_player_hand(player_hand)
  p player_hand
end

def display_dealer_hand(dealer_cards)
  prompt "#{dealer_cards.first} and HIDDEN CARD."
end

def bust?(player_hand)
  cards_total(player_hand) > 21
end

# Main Game Loop
loop do 
  prompt "Welcome to 21!"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  
# initial deal
  2.times do
    player_cards << deck.pop 
    dealer_cards << deck.pop
  end
    
# Add player cards- not a necessary feature but helpful for building
prompt "Add player cards"
p cards_total(player_cards)
p cards_total(dealer_cards)

# Display player cards and one dealer card
prompt "Display cards"
display_player_hand(player_cards)
display_dealer_hand(dealer_cards)

# Player turn loop
  # hit or stay?
  loop do
    prompt 'Would you like to hit or stay?'
    answer = gets.chomp.to_s
    if answer == 'hit'
      # deal_new_card
      # break if bust?
        # output "you busted!""
    elsif answer == 'stay'
      # break to dealer's turn
    else 
      invalid_choice
    end
  end
    
# Dealer's turn loop do
  # if dealer_cards <= 17
    # deal_new_card
  # elsif dealer_cards <= 21
    # stay and break
  # else dealer_cards > 21
    # bust


# Calculate Winner
  

# Output results
  # if cards_total(player_cards) > cards_total(dealer_cards)
    # prompt "You won!"
  # else
    # prompt "Dealer won!"

# Play Again?
  # Break if not


break
end