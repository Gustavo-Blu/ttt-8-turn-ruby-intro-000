def turn(board)
  puts "Welcome to Tic Tac Toe!"

  display_board(board)

  puts "Please enter 1-9:"
  move = get.chomp
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
  else
    puts "Please enter 1-9:"
    move = get.chomp
  end
end

def display_board(board)
  puts " board[0] | board[1] | board[2] "
  puts "-----------"
  puts " board[3] | board[4] | board[5] "
  puts "-----------"
  puts " board[6] | board[7] | board[8] "
end

def input_to_index(input)
  input.to_i - 1
end

def vald_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  else
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
end
