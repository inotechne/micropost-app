
puts "Hello World !"

puts "Sawasdee Khrap !".reverse # => parhK eedsawaS


1.class #⇒Fixnum 
1.5.class #⇒Float
(2*5.0).class #⇒Float 
2555.next #⇒2556

"Hello World".class #⇒String
"! burK eedsawaS".reverse #⇒Sawasdee Krub !




$GLOBAL_VARIABLE   Ex: $LOAD_PATH, $bad_practice
$global_variable 
     
@@class_variable   @@total_count @@TOTAL_COUNT

@instance_variable  @results, @first_name

CONSTANT             VERSION, PI
OtherConstant

local_variable       x, my_string
              


def say(message)
 puts "Ruby say: #{message}"
end

def is_admin?(user)
    user.admin
    # no explicit return needed !
end


def blank?
  /\S/ !~ self
end



def exclude?(str)
  !include?(str)
end

def exclude?(str, value)
   !str.include?(value)
end

"Hello".exclude?("World")

def result=(value)
    @result = value * 2
end

def one_argument(value)
  puts "I require one and only one argument: '#{value}'"
end

one_argument
# ArgumentError: wrong number of arguments (0 for 1)

one_argument(1,2,3)
# ArgumentError: wrong number of arguments (3 for 1)

one_argument("Hello !")
# ⇒ I require one and only one argument: 'Hello !'


def multi_arguments(*array)
    array.each { |var| puts "#{var}: #{var.class}" }
end

multi_arguments(1, "Hello", 2*5.0, [5, "Sawasdee", Math::PI])

1: Fixnum
Hello: String
10.0: Float
[5, "Sawasdee", 3.141592653589793]: Array


def default_arguments(alpha = 1, beta)
    p alpha 
    p beta
end

def default_arguments(alpha, beta = 2)
    p alpha 
    p beta
end

default_arguments
# ArgumentError: wrong number of arguments (0 for 1)

default_arguments(1)
#⇒1
#⇒2
default_arguments(1,3)
#⇒1
#⇒3

str = "Hello World !"
str.upcase!
puts str
#⇒ HELLO WORLD !


class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"
person_instance.age = 21
person_instance.gender = "male"

puts person_instance.name

#⇒ Richard

3.times do
    class Exe
        puts "Hello World from '#{self}' class"
    end
end

class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Richard"

p person_instance.class
p Person.class
