arr = [0, 1, 3, 2, 4, 9, 8, 6, 5, 7]

def stupid_sort(arr)
  iteration = 0
  i = 0
  loop do
    iteration += 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    else
      i += 1
    end
    break if i == (arr.length - 1)
  end
  p iteration
  arr
end
p stupid_sort(arr) # 69 iteration on 10 elements

arr = [0, 1, 3, 2, 4, 9, 8, 6, 5, 7]
def bubble_sorting(arr)
  iteration = 0
  (0..arr.length - 1).each do |i|
    (i + 1..arr.length - 1).each do |j|
      iteration += 1
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
  end
  p iteration
  arr
end

p bubble_sorting(arr) #45  iteration on 10 elements