class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"
person_instance.age = 21
person_instance.gender = "male"


p person_instance.name
p person_instance.age