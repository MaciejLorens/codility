# siblings family

def solution(n)
  c_9 = n.to_s.count('9')
  c_8 = n.to_s.count('8')
  c_7 = n.to_s.count('7')
  c_6 = n.to_s.count('6')
  c_5 = n.to_s.count('5')
  c_4 = n.to_s.count('4')
  c_3 = n.to_s.count('3')
  c_2 = n.to_s.count('2')
  c_1 = n.to_s.count('1')
  c_0 = n.to_s.count('0')

  "#{'9' * c_9}#{'8' * c_8}#{'7' * c_7}#{'6' * c_6}#{'5' * c_5}#{'4' * c_4}#{'3' * c_3}#{'2' * c_2}#{'1' * c_1}#{'0' * c_0}".to_i
end

n = 9387261699

p solution(n)
