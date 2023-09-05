def bubble_sort(array)
  n = array.length
  swapped = true
  while swapped
    swapped = false
    for i in 0...n - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end

p bubble_sort([2, 4, 1, 8, 34, 99, 100, 1120, 4899, 16])
