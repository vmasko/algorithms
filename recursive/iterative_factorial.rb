module IterativeFactorial
  def iterative_factorial(n)
    result = 1
    for i in 1..n
      result *= i
    end
    result
  end
end
