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
  # result = false
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3)
      board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3] ? result = win_combo : result = false
      puts "win_combo: #{win_combo}, result: #{result}"
    else
      result = false
    end
    binding.pry
  end
  binding.pry
  result
end
board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
