for i in 1..10 do
    print "#{i} "   # run from 1 to 10 (inclusive 1 and 10)
    # i+=1  
end

puts

arr = [1,2,"adva",3,5,"rahul",7,9,0,94,31]

for i in arr do
    print "#{i} "
end

puts

# while loop 
j=0
p "While loop"
while j<10
    print "#{j} "
    j +=1
end

puts

# util loop
l=0
until l>5 
    print "until loop - #{l}, "
    l+=1
end

puts

5.times do
    print "this is times iterator example\n"
end


# loop -> loop
k=0
loop do
    print "loop #{k} - "
    k+=1    
break if k>4
end

puts

for i in 1..3
  puts "start i=#{i}"
  i+=1
  redo if i <= 2
  puts "end   i=#{i}"
end


