def solution(x, a)
  same_count = 0
  diff_count = a.count - a.count(x)
  a.each_with_index do |el, index|
    break index if same_count == diff_count
    same_count += 1 if el == x
    diff_count -= 1 if el != x
  end
end

A = []
A[0] = 5
A[1] = 0
A[2] = 0
A[3] = 0
A[4] = 0
A[5] = 5
A[6] = 0
A[7] = 5
A[8] = 5

x = 5

p solution(x, A)
