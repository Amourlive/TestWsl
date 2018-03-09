print 'Enter the first number: '
int1 = gets.chomp.to_i
print 'Enter the last number: '
int2 = gets.chomp.to_i
arr = (int1..int2).to_a
arr.map! do |x|
  if (x % 3).zero?
    if (x % 5).zero?
      'FizzBuzz'
    else
      'Buzz'
    end
  elsif (x % 5).zero?
    'Buzz'
  else
    x
  end
end
puts arr
