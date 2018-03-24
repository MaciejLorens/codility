def solution(x, y)
  moves = 0

  until x < 5 && y < 5
    moves += 1

    if x > y
      x -= 2
      y -= 1
    else
      x -= 1
      y -= 2
    end

    x = x.abs
    y = y.abs
  end

  small_solution(x, y) + moves
end

def small_solution(x, y)
  arr = [
      [0, 3, 2, 3, 2],
      [3, 2, 1, 2, 3],
      [2, 1, 4, 3, 2],
      [3, 2, 3, 2, 3],
      [2, 3, 2, 3, 4]
  ]

  arr[x][y]
end

p solution(25, 19)
