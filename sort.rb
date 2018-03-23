arr = [8, 0, 3, 2, 4, 9, 7, 6, 5, 1]

def stupid_sort(arr)
  iteration = 0
  i = 0
  loop do
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      iteration += 1
      i = 0
    end
    i += 1
    break if i == (arr.length - 2)
  end
  p iteration
  arr
end
p stupid_sort(arr) # 14 iteration on 10 elements

def bubble_sorting(arr)
  iteration = 0
  (0..arr.length - 1).each do |i|
    (i + 1..arr.length - 1).each do |j|
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
        iteration += 1
      end
    end
  end
  p iteration
  arr
end

p bubble_sorting(arr) # 8  iteration on 10 elements