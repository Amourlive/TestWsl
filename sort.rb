arr = [1, 0, 3, 2, 4, 9, 7, 6, 5, 8]

def stupid_sort(arr)
  number = 0
  i = 0
  loop do
    number += 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    end
    i += 1
    break if i == (arr.length - 2)
  end
  p number
  arr
end

p stupid_sort(arr)