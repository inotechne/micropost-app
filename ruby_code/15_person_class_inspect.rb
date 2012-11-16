class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"

p person_instance.class
p Person.class