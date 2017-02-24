require_relative 'iterative_factorial'
require_relative 'recursive_factorial'

require 'benchmark'

class Factorial
  include IterativeFactorial
  include RecursiveFactorial

  def compare
    Benchmark.bm do |x|
      puts 'Iterative:'
      puts x.report { iterative_factorial(10_000) }

      puts 'Recursive:'
      puts x.report { recursive_factorial(10_000) }
    end
  end
end
