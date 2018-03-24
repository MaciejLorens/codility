def solution(a)
  slices_arr = []

  a.each_with_index do |el, index|
    next if el < 0

    slice = [el]
    a[index + 1, a.count - 1].each_with_index do |sub_el, sub_index|
      if sub_el < 0
        slices_arr << slice.inject(&:+)
        break
      else
        slice << sub_el
      end
    end
  end

  slices_arr.max
end


a = [-1, 2, 1, 2, 0, 2, 1, -3, 4, 3, 0, -1]

p solution(a)
