def merge_sort(ary)
  if ary.length < 2
    ary
  else
    left = merge_sort(ary[0...(ary.length / 2)])
    right = merge_sort(ary[(ary.length / 2)..-1])
    merged = []
    loop do
      left[0] < right[0] ? merged << left.shift : merged << right.shift
      if left.empty?
        right.each { |n| merged << n}
        break
      elsif right.empty?
        left.each { |n| merged << n}
        break
      end
    end
    merged
  end
end