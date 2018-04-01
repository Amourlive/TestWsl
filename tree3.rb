class Tree
  attr_accessor :left
  attr_accessor :right
  attr_accessor :data

  def initialize(x = nil)
    @left = nil
    @right = nil
    @data = x
  end

  def insert(x)
    if @data == nil
      @data = x
    elsif x <= @data
      if @left == nil
        @left = Tree.new(x)
      else
        @left.insert x
      end
    else
      if @right == nil
        @right = Tree.new x
      else
        @right.insert x
      end
    end
  end

  def search(x)
    if data == x
      self
    elsif x < self.data
      left ? left.search(x) : nil
    else
      right ? right.search(x) : nil
    end
  end
end

keys = [50, 20, 80, 10, 30, 70, 90, 5, 14,
         28, 41, 66, 75, 88, 96]
tree = Tree.new

keys.each { |x| tree.insert(x)}

s1 = tree.search(75)
p s1
s2 = tree.search(100)
p s2