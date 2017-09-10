def bubble_sort(array)
  sorted = false
  n = array.length
  until sorted
    sorted = true
    (1...n).each do |i|
      if array[i] < array[i - 1]
        array[i], array[i - 1] = array[i - 1], array[i]
        sorted = false
      end
    end
    n -= 1
  end
  array
end

# p bubble_sort([3, 2, 9, 6, 5])

#  p bubble_sort([9, 1, 2, 3, 4, 5])
p bubble_sort([4, 3, 78, 2, 0, 2])

# bubble_sort([9, 8, 7, 6, 5, 4, 3, 2, 1])
