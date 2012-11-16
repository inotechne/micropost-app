def add_method_to_class_of(obj)
  # Get the class of the object
  obj.class.class_eval do
    puts "+ Adding method to class: #{obj.class}"
    def exclude?(str)
      !include?(str)
    end
  end
end

add_method_to_class_of("Hello")

puts "Hello".exclude?("World")
