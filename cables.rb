def cables(n, k)
  cables = Array.new(n) { rand(1_000_000..10_000_000) }.sort!
  left, right = 0, 10_000_000
  while left + 1 < right
    mid = (left + right) / 2
    count = 0
    cables.each { |length| count += length / mid }
    if count >= k
      left = mid
    else
      right = mid
    end
  end
  puts left
end

cables(10000, 4000)