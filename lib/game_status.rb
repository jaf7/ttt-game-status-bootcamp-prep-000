# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)
  win = nil # ensure that scope of "result" variable will encompass the do-end block passed to #each
  WIN_COMBINATIONS.each do |win_combo|
    position_1 = win_combo[0]
    position_2 = win_combo[1]
    position_3 = win_combo[2]
    if position_taken?(board, position_1) && position_taken?(board, position_2) && position_taken?(board, position_3)
      if board[position_1] == board[position_2] && board[position_2] == board[position_3]
      # board[position_1] == board[position_2] && board[position_2] == board[position_3] ? return win_combo : false
      # binding.pry # result => [0,1,2]
    else
      false
    end
    # binding.pry # result => [0,1,2]
  end
end
board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
