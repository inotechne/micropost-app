class String
  def exclude?(str)
    !include?(str)
  end
end

puts "Hello".exclude?("World")