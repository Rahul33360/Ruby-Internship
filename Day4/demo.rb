=begin 
product = :ad
# product += :ds    # cannot modify your symbol
name = "rahul"
name += "Kumar"
puts product.class
puts name.class
puts product.object_id

3.times do
    p name.object_id
end
puts "----------"
3.times do
    p product.object_id
end
=end

=begin 
class Demo

    @@class_count = 0 # will be same for every object. because it is class variable
    
    def initialize
        @instance_count = 0; #instance variable. will be different for every object.  
    end

    def self.class_counting
        @@class_count = @@class_count + 1
        # puts count
    end
    def local
        #local variable
        local_count = 0
        local_count += 1
        # puts local_count
    end



    def instance_counting
        @instance_count +=1
        # puts count
    end
end

obj2 = Demo.new
puts "Class_count -> #{Demo.class_counting}"
puts "Class_count -> #{Demo.class_counting}"
puts "Class_count -> #{Demo.class_counting}"
puts "Class_count -> #{Demo.class_counting}"

puts "instance_counting obj2 -> #{obj2.instance_counting}"
puts "instance_counting obj2 -> #{obj2.instance_counting}"

obj3 = Demo.new
puts "instance_counting obj3 -> #{obj3.instance_counting}"
puts "instance_counting obj3 -> #{obj3.instance_counting}"
puts "instance_counting obj3 -> #{obj3.instance_counting}"


puts "local -> #{obj2.local}"
puts "local -> #{obj2.local}"
=end

# using getter and setter also we can create the instance variable 

=begin 
class Demo2
    def set_name(name) 
        @name = name    # instance variable created here
    end

    def declair    # declair
        @name           # will be nil if set_name wasn't called yet
    end
end

obj4 = Demo2.new
p obj4.declair      # nil
obj4.set_name("Rahul")
p obj4.declair      # "Rahul"
=end

class Example
    def initialize        
        @var1 = "a"
        @var2 = 1
        @var3 = true
        @var4 = :symbol
    end
    def display
        puts @var1.class
        puts @var2.class
        puts @var3.class
        puts @var4.class
    end
end

obj5 = Example.new
obj5.display

