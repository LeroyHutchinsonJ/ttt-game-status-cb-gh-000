# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [

  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row

  [0,3,6],  # First column
  [1,4,7],  # Middle column
  [2,5,8],  # Last column

  [0,4,8],  # TopLeft to BottomRight
  [2,4,6]  # TopRight to BottomLeft

  # ETC, an array for each win combination
]

def won? (board)

WIN_COMBINATIONS.each do|win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  if win_index_1 == "X" && win_index_2 == "X" && win_index_3 == "X"
      return win_combination # return the win_combination indexes that won.
    else
      false
    end


end
end
