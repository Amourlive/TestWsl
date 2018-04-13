def good_permutation(n)
  if n < 1 || n > 2000
    puts 'Invalid variable'
  else
    arr = (1..n).to_a
    arr[0] = n + 1
    p arr
    n.downto(2) do |x|
      arr2 = arr
      if ((n + 1) % x).zero?
        arr2[arr2.find_index(x)] = n + 1
        arr2[0] = x
        p arr2
      end
    end
  end
end

good_permutation(12)