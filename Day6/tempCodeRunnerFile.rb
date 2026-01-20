for i in 1..3
  puts "start i=#{i}"
  i+=1
  redo if i <= 2
  puts "end   i=#{i}"
end
