class Array
  def uniq_column
    arr = []
    a = []
    each do |row|
      if row.length <=2
        arr = nil
        break
      end
      length = row.length
      row.each_index do |index|
        if row[index] == row[(index + 1) % length]
          a = row[index]
          break
        end
      end
      row.delete(a)
      arr << row[0]
    end
    arr
  end
end

arr = [
    [2, 2, 4],
    [3, 3, 6, 3],
    [9, 9, 1],
    [8, 8, 8, 2, 8]
]

arr.uniq_column