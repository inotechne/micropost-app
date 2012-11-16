multiply = lambda {|x, y| x * y }
p multiply.call(4, 3)

def multiply_by(n)
  lambda { |x| x * n }
end

by_10 = multiply_by(10)
by_3  = multiply_by(3)

p by_10.call(5)
p by_3.call(6)

#p by_10.inspect