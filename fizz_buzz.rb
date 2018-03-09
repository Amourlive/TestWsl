print 'Enter the first number: '
int1 = gets.chomp.to_i
print 'Enter the last number: '
int2 = gets.chomp.to_i
arr = (int1..int2).to_a
arr.each do |x|
  print x
  if (x % 3).zero?
    print ' - Fizz'
    if (x % 5).zero?
      puts 'Buzz'
    else
      print "\n"
    end
  elsif (x % 5).zero?
    puts ' - Buzz'
  else
    print "\n"
  end
end