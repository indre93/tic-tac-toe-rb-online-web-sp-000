WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  index = move.to_i - 1 
end

def move(board, index, token)
  postion[index] = token
end  

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
   false
  else board[index] == "X" || board[index] == "O"
   true
  end
end

def valid_move?(board, position)
  index = position.to_i - 1 
   if !position_taken?(board, position) && position.between?(0,8)
    true
   else
    false
   end
end



