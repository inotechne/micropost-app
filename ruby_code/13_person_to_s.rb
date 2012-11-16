class Person
    attr_accessor :name, :age, :gender

  def to_s
    "My name is #{@name}, I'm a #{@age} years old #{@gender} Ruby programmer"
  end

end

person_instance = Person.new
person_instance.name = "Richard"
person_instance.age = 21
person_instance.gender = "male"

puts person_instance