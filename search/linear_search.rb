module LinearSearch
  def linear_search(array, target)
    for guess in 0..array.length do
      if array[guess] == target
        puts "Linear: result - #{array[guess]}."
        break
      end
    end
  end
end