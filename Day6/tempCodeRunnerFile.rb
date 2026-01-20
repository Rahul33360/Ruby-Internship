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
