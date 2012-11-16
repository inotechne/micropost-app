def exclude?(str, value)
   !str.include?(value)
end

puts exclude?("Hello", "World")
puts exclude?("Hello", "He")