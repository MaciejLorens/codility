def solution(a)
  x = 0

  a.each_with_index do |el, index|
    x += el * (-2) ** index
  end

  negabinary(-x)
end

def negabinary(x)
  result = ''
  while x != 0
    remainder = x % -2
    x = x / -2

    if remainder < 0
      remainder += 2
      x += 1
    end

    result = remainder.to_s + result
  end

  result.reverse.split('').map(&:to_i)
end

A = []
A[0] = 1
A[1] = 0
A[2] = 0
A[3] = 1
A[4] = 1

#A[0] = 1
#A[1] = 0
#A[2] = 0
#A[3] = 1
#A[4] = 1
#A[5] = 1
#A[6] = 1

p solution(A)
