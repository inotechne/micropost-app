def repeat(n, &proc_obj)
  n.times { proc_obj.call } if proc_obj
end

repeat(3) { puts "Hello World !" }