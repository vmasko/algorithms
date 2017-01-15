require 'benchmark'

range  = (1..10000000)
array  = range.to_a
target = rand(range)

def linear_search(array, target)
  for guess in 0..array.length do
    if array[guess] == target
      puts "Result: #{array[guess]}."
      break
    end
  end
end

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
      puts "Result: #{array[guess]}."
      break
    end
  end
end

Benchmark.bm do |x|
  x.report { linear_search(array, target) }
  x.report { binary_search(array, target) }
end
