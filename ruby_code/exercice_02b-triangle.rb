class Triangle
  
  @@count = 0

  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height     = height
    @side1      = side1
    @side2      = side2
    @side3      = side3
    @@count    += 1
  end

  def self.count
    @@count
  end
  
  def area
    @base_width * @height / 2
  end

  def perimeter
    @side1 + @side2 + @side3
  end

  def to_s
    "Hello, I'm a #{self.class}: my area is #{area} and my perimeter #{perimeter}"
  end
end

tr = Triangle.new(20, 8, 12, 10, 14)

p tr.area
p tr.perimeter
p tr

other_tr = Triangle.new(10, 5, 8, 11, 12)

p "We have created #{Triangle.count} triangle(s)"