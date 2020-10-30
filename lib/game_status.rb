# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[ [0,1,2] , [3,4,5] , [6,7,8] , [0,3,6] , [1,4,7] , [2,5,8] , [0,4,8] , [2,4,6] ]

#def won?(board)
#  WIN_COMBINATIONS.each do |x|
#    win1 = board[x[1]]
#    win2 = board[x[2]]
#    win3 = board[x[3]]

#    if (win1 == "X" || win1 == "O") && (win2 == "X" || win2 == "O") && (win3 == "X" || win3 == "O")
#      return x
#    end
#  end
#  return false
#end
def won?(board)
  WIN_COMBINATIONS.each do |x|
    win1 = board[x[1]]
    win2 = board[x[2]]
    win3 = board[x[3]]

    if win1 == "X" && win2 == "X" && win3 == "X"
      return x
    elsif win1 == "O" && win2 == "O" && win3 == "O"
      return x
    end
  end
  return false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end
