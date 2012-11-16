class Pet
  attr_accessor :name, :age, :gender, :color

  def initialize(name, age, gender, color = "black")
    @name   = name
    @age    = age
    @gender = gender
    @color  = color
  end
end

class Dog < Pet
end


my_dog = Dog.new("Sammy", 3, "male")
p my_dog