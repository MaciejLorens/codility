def solution(a)
  n = a.length
  l = Array.new(n + 1)
  l[0] = -1

  for i in 0 .. (n - 1)
    l[i + 1] = a[i]
  end
  count = 0
  pos = (n + 1) / 2
  candidate = l[pos]
  for i in 1 .. n
    if (l[i] == candidate) then
      count = count + 1

    end
  end

  if (count > n / 2) then
    return candidate;
  end
  return -1
end

A = []
A[0] = 1
A[1] = 2
A[2] = 2
A[3] = 2
A[4] = 2
A[5] = 3
A[6] = 4
A[7] = 4

p solution(A)
