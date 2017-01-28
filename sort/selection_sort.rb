array = [22, 11, 99, 88, 9, 7, 42]

def swap(array, first, second)
  stored = array[first]

  array[first]  = array[second]
  array[second] = stored
end

def find_min_index(array, start_index)
  min_value = array[start_index]
  min_index = start_index

  for i in min_index + 1..array.size - 1
    if array[i] < min_value
      min_value = array[i]
      min_index = i
    end
  end

  min_index
end

def selection_sort(array)
  for i in 0..array.size - 1
    second = find_min_index(array, i)
    swap(array, i, second)
  end
end

puts selection_sort(array).to_s
