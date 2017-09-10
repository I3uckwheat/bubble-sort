def bubble_sort(array)
  sorted = false
  while sorted == false
    temp = array.clone
    array.each_index { |i| array[i], array[i + 1] = array[i + 1], array[i] if i < array.length - 1 && array[i] > array[i + 1] }
    sorted = true if temp == array
  end
  array
end

# def bubble_sort(array)
#   sorted = false
#   while sorted == false
#     temp = array.clone
#     array.each_index do |i|
#       if i < array.length - 1 && array[i] > array[i + 1]
#         array[i], array[i + 1] = array[i + 1], array[i]
#         sorted = true if temp == array
#       end
#     end
#     array
#   end
# end

puts bubble_sort([4, 3, 78, 2, 0, 2])
