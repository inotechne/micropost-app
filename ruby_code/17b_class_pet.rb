class Pet
  attr_accessor :name, :age, :gender, :color
end

class Dog < Pet
end

class Snake < Pet
  attr_accessor :length
end

my_dog, my_snake        = Dog.new, Snake.new
my_dog.name, my_dog.age = "Bernie", 3
my_snake.name, my_snake.length = "Sammy", 42

my_dog.length = 25
