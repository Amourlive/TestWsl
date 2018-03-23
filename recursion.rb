def sum_upto(n)
  return 1 if n == 1
  sum_upto(n - 1) + n
end

def append(ary, n)
  return ary if n < 0
  ary << n
  append(ary, n - 1)
end

# append([], 0) # => [0]
# append([], 1) # => [1, 0]
# append([], 2) # => [2 , 1, 0]
# append([], 3) # => [3 , 2, 1, 0]

def reverse_append(ary, n)
  return ary if n < 0
  reverse_append(ary, n - 1)
  ary << n
  ary
end

# reverse_append([]), -1 # => []
# reverse_append([]),  0 # => [0]
# reverse_append([]),  1 # => [0,1]

def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

def palindrome(string)
  return true if string.length == 1 || string.length == 0
  if string[0] == string[-1]
    palindrome(string[1..-2])
  else
    false
  end
end

def bottles(n)
  if n.zero?
    puts 'no more bottles of beer on the wall'
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n - 1)
  end
end

def fib(n)
  if n.zero?
    0
  elsif n == 1
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end