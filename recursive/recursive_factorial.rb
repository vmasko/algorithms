module RecursiveFactorial
  def recursive_factorial(n)
    return 1 if n == 0
    recursive_factorial(n - 1) * n
  end
end
