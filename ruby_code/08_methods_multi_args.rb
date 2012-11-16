def multi_arguments(*array)
    array.each { |var| puts "#{var}: #{var.class}" }
end

multi_arguments(1, "Hello", 2*5.0, [5, "Sawasdee", Math::PI])
