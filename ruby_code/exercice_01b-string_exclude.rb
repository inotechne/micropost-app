String.class_eval do
  def exclude?(str)
    !include?(str)
  end
end

puts "Hello".exclude?("World")
