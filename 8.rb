require 'bigdecimal'

def solution(a, b)
  c = []
  a.each_with_index do |el, index|
    c[index] = BigDecimal.new(a[index].to_s) + BigDecimal.new((b[index].to_f / 1_000_000).to_s)
  end

  count = 0
  c.each_with_index do |el, index|
    c[index + 1, c.count].each_with_index do |sub_el, sub_index|
      if el * sub_el >= el + sub_el
        count += 1
      end
    end
  end

  count
end

A = []
B = []
A[0] = 0; B[0] = 500_000
A[1] = 1; B[1] = 500_000
A[2] = 2; B[2] = 0
A[3] = 2; B[3] = 0
A[4] = 3; B[4] = 0
A[5] = 5; B[5] = 20_000

p solution(A, B)
