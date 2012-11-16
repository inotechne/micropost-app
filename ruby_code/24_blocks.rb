def message_for(first_name, last_name)
  puts "--- Beginning of method"
  yield(first_name, last_name)
  puts "--- End of method"
end

message_for("Monsiree", "Thassanakathitum") do |fn, ln|
  puts "Hello #{fn} #{ln}"
  puts "How are you ?"
end