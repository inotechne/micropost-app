result = (5..10).inject(0) { |sum, i| sum + i}
p result

result = [1, 3, 5, 7, 9].find { |i|  i*i > 30 } 
p result

0.step(15, 3) { |i| print i, " "} 

puts

File.open("./myfile.txt") do |fh|
  fh.each_line { |l| puts l if l.size > 20 }
end