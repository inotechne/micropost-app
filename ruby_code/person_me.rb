class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"
person_instance.age = 21
person_instance.gender = "male"

p person_instance.name
p person_instance.age

current_me = person_instance.clone
current_me.age = 43
p current_me.name
p current_me.age