# bugfixing coins

def solution(a)
  return a.count - 1 if a.count(0) == a.count || a.count(1) == a.count


  slices_count = []
  a.each_with_index do |el, index|
    slice_a = [el]
    flipped = false

    a[index + 1, a.count - 1].each_with_index do |sub_el, sub_index|
      if sub_el == el
        slice_a << sub_el
      else
        unless flipped
          slice_a << sub_el
          flipped = true
        else
          break
        end
      end
    end

    el = el == 0 ? 1 : 0
    slice_b = [el]
    a[index + 1, a.count - 1].each_with_index do |sub_el, sub_index|
      if sub_el == el
        slice_b << sub_el
      else
        break
      end
    end

    slices_count << [slice_a.count, slice_b.count].max
  end

  slices_count.max
end

a = [] ; 70.times {a << [1,0].sample}

p a
p solution(a)
