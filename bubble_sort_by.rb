def bubble_sort_by(array)
  sorted = false
  n = array.length
  until sorted
    sorted = true
    (1...n).each do |i|
      if (block_given? && yield(array[i - 1], array[i]) >= 0) || (!block_given? && array[i] < array[i - 1])
        array[i], array[i - 1] = array[i - 1], array[i]
        sorted = false
      end
    end
    n -= 1
  end
  p array
end
bubble_sort_by([4,3,78,2,0,2])
bubble_sort_by([9, 8, 7, 6, 5, 4, 3, 2, 1])


bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
