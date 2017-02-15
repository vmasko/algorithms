module BinarySearch
  def binary_search(array, target)
    min = 0
    max = array.length - 1
    loop do
      guess = (min + max) / 2
      if max < min
        puts -1
        break
      else
        min = guess + 1 if array[guess] < target
        max = guess - 1 if array[guess] > target
        # print array[min..max]
        # puts
      end

      if array[guess] == target
        puts "Binary: result - #{array[guess]}."
        break
      end
    end
  end
end