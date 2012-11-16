class Square
  
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length ** 2 
  end

  def perimeter
    @side_length * 4
  end
end

sq = Square.new(3)

p sq.area
p sq.perimeter