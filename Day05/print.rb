puts "ab"   # move to new line
print "cd"  # doesn't not move to different line
puts " ef"  


var = nil
p var.class
var2 = []
var3 = {name:"sb"}
p var2.class
p var3.class
var3[:age] = 22                      # adding new key
var3[:name] = "Car"                  # updating the previous value
puts "All keys -> #{var3.keys}"      # lists all the keys
p var3[:name]                        # var3[key]


# dynamic input
num1 = gets.chomp
num2 = gets.chomp
puts num1+num2

num3 = gets.chomp.to_i
num4 = gets.chomp.to_i
puts num3+num4

