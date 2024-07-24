def bubble_sort(arr)
  arr.length.times do |i|
    swapped = false

    (arr.length - i - 1).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end

    break if !swapped
  end
  arr
end

pp "before [" + [4,3,78,2,0,2].join(', ') + "]"
pp "after [" + bubble_sort([4,3,78,2,0,2]).join(', ') + "]"
