# Tic Tac Toe with Bonus Features

WHO_GOES_FIRST = 'choose' # other options are 'player' and 'computer'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Player = X || Computer = O"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop: enable Metrics/AbcSize

def joinor(array, delimiter=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join("#{word}")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

def choose_starting_player
  prompt 'Please choose starting player:'
  prompt 'player or computer?'
  answer = gets.chomp
  if answer == 'player'
    player
  elsif answer == 'computer'
    computer
  else
    prompt 'Sorry, that is not a valid option.'
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  elsif current_player == 'computer'
    'player'
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def take_middle_square(brd)
  5 if brd[5] == INITIAL_MARKER
end

def take_random_square(brd)
  empty_squares(brd).sample
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_attack_to_win(brd)
  best_move(brd, COMPUTER_MARKER)
end

def computer_defend_threat(brd)
  best_move(brd, PLAYER_MARKER)
end

def best_move(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      then line.select do |square|
        return square if empty_squares(brd).include?(square)
      end
    end
    next
  end
  nil
end

def computer_places_piece!(brd)
  square = computer_attack_to_win(brd)
  square = computer_defend_threat(brd) unless square
  square = take_middle_square(brd) unless square
  square = take_random_square(brd) unless square
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ' '
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  elsif current_player == 'computer'
    computer_places_piece!(brd)
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def play_again?
  prompt "Play again? (y or n)"
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    return false
  elsif answer.downcase.start_with?('n')
    return true
  end
  play_again?
end

player_score = 0
computer_score = 0
draws = 0

loop do # Main Program loop

  if WHO_GOES_FIRST == 'choose'
    current_player = nil
    loop do
      prompt 'Welcome to Tic Tac Toe!'
      prompt 'First to 5 wins the match!'
      sleep 3
      board = initialize_board
      display_board(board)
      prompt 'Please choose a starting player:'
      prompt 'player or computer?'
      answer = gets.chomp.downcase
      if answer == 'player'
        current_player = 'player'
        break
      elsif answer == 'computer'
        current_player = 'computer'
        break
      else
        prompt 'Sorry, that is not a valid option.'
      end
    end
  end

  loop do
    board = initialize_board
    display_board(board)

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "---#{detect_winner(board)} won!---"
    else
      prompt "---It's a tie!---"
    end

    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    else
      draws += 1
    end

    prompt "Player wins: #{player_score}"
    prompt "Computer wins: #{computer_score}"
    prompt "Draws: #{draws}"

    break if player_score >= 5 || computer_score >= 5

    break if play_again?
  end
  break
end

prompt "Thanks for playing Tic Tac Toe!"
