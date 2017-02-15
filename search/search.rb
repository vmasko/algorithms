require_relative 'binary_search'
require_relative 'linear_search'

require 'benchmark'

class Search
  include BinarySearch
  include LinearSearch

  RANGE  = (1..10_000_000)
  ARRAY  = RANGE.to_a
  TARGET = rand(RANGE)

  def compare
    Benchmark.bm do |x|
      puts x.report { linear_search(ARRAY, TARGET) }
      puts x.report { binary_search(ARRAY, TARGET) }
    end
  end
end
