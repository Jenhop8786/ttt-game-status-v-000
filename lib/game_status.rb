# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 def WIN_COMBINATIONS = [
 [0,1,2],
 [3,4,5],
 @@ -12,7 +10,6 @@ WIN_COMBINATIONS = [
]
end
def play(board)
  puts "Welcome to Tic Tac Toe!"
  while !over?(board)
    turn(board)
  end
  @@ -44,8 +41,12 @@ def won?(board)
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end
def draw?(board)
  !won(board) && full?(board)
end
def over?(board)
  @@ -59,7 +60,7 @@ def turn(board)
    turn(board)
  end
  move(board, input, current_player(board))
  display_board(board)
end
def position_taken(board, location)
end
