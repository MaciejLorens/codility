# find the N-th number of form 2**p * 3**q

def solution(n)
  a = []

  25.times do |p|
    25.times do |q|
      a << 2**p * 3**q
    end
  end

  a.sort[n]
end

n = 170

p solution(n)
