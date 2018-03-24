# 2**L sum

def solution(a)
  binaries = a.map do |el|
    "1#{'0' * el}"
  end

  k = binaries.inject(0) {|sum, el| sum += el.to_i(2)}
  (k * 3).to_s(2).count('1')
end

a = [100000, 400000, 500000]

p solution(a)
