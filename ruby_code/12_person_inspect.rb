class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"
person_instance.age = 21
person_instance.gender = "male"

current_me = person_instance.clone
current_me.age = 43

puts person_instance.inspect
puts current_me.inspect