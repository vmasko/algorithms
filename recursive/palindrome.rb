def is_palindrome?(string)
  return true  if string.length <= 1
  return false if string[0] != string[-1]

  is_palindrome?(string[1..-2])
end
