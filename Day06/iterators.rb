
# each, select/reject, map, all, inject

arr2 = [1,4,0,0,7,2]
arr3 = arr2.select {|a| a<4} 
p arr3

puts "Reject -> "
# arr2 = [1,4,0,0,7,2]
arr5 = arr2.reject {|a| a<4} 
p arr5


# using bang operator -> !

arr6 = [1,4,0,0,7,2]
p "Befor using bang Operator #{arr6}"
arr7 = arr6.select! {|a| a<4}
p "After using bang Operator"
p "original arr #{arr6}"
p "new stored array #{arr7}"

print "-------------\n"

arr8 = [1,456,77,9,22,132,45]
# puts arr8
p arr8.all? {|n| n>5 }  # it return boolean value(false) if all the values will be greater than 5


# below one it the opposite of all
arr8 = [1,456,77,9,22,132,45]
# puts arr8
p arr8.any? {|n| n>5 }  # it return boolean value(true) if any the values will be greate than 5


# map vs collect vs each
# there is no difference in map and collect. they both are alisas.
arr9 = [1,45,77,9,22,12,45]
puts "map"
arr10 = arr9.map {|i| i*2}
p arr9
p arr10
puts "collect"
arr11 = arr9.collect {|i| i*2}
p arr9
p arr11
puts "each"
arr12 = arr9.each {|i| i*2}
p arr9
p arr12
