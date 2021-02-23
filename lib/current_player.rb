def turn_count(board)
  counter = 0
  board.each do |board_position|
    if board_position == "X" || board_position == "O"
      counter += 1
    end
  end
  counter
end

def current_player(board)
  if turn_count(board) % 2 == 0 # Note: This operator shows the remainder when divided by a given number. It's another way of saying the number is even (R=0 when divided by 2).
  # Alternatively, if turn_count(board).even? then "X"
    "X"
  else
    "O"
  end
end


# IF turn count is even, return X. ELSE, return O.
