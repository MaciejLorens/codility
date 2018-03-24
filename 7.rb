def solution(a)
  pits = []

  a.each_with_index do |el, index|
    down = true
    next unless (index < a.count - 1) && (el > a[index + 1])
    pit = [el]
    prev = el
    a[index + 1, a.count - 1].each do |sub_el|

      if sub_el < prev
        break unless down
        pit << sub_el
      elsif sub_el > prev
        down = false
        pit << sub_el
      end

      prev = sub_el
    end

    p = pit.first
    q = pit.min
    r = pit.last
    pits << [p - q, r - q].min
  end

  pits.max
end

A = []
A[0] = 0
A[1] = 1
A[2] = 3
A[3] = -2
A[4] = 0
A[5] = 1
A[6] = 0
A[7] = -3
A[8] = 2
A[9] = 3

p solution(A)
