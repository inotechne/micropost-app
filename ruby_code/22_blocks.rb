3.times do
  puts "Hello World !"
end

results = [1, 2, 3, 4, 5].map {|x| x ** 2 }

p results

results = [1,2,3].sort{ |a,b| b <=> a }.map{ |x| x + 1 }

p results