def foo
  puts "Beginning of method"
  if block_given?
    puts "Block given to foo"
    yield
    yield
  else
    puts "No block given to foo"
  end
  puts "End of method"
end

foo
puts " ----- "
foo { puts "+++ Hello World from block !"}
