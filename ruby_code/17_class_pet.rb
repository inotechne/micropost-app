class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

my_cat = Cat.new
my_cat.name, my_cat.age = "Eiko", 2
my_cat.gender, my_cat.color = "female", "black"

p my_cat
