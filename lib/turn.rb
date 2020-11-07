def turn(board)
  counter = 0

  index = 0

  while valid_move?(index) != true
    puts "Please enter 1-9:"
    input = get.strip
    index = input_to_index(input)
    counter += 1
  end

  move(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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
