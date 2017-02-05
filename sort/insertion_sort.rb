def insert(array, right_index, value)
  i = right_index
  while i >= 0 && array[i] > value
    array[i + 1] = array[i]
    i -= 1
  end
  array[i + 1] = value
end

def insertion_sort(array)
  for i in 1..array.length - 1
    insert(array, i - 1, array[i])
  end
  array
end

array = [22, 11, 99, 88, 9, 7, 42]
puts insertion_sort(array).to_s