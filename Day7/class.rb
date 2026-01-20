=begin 
class Base
end

class Child < Base
    var = 10;
    def method
        p "Child called"
    end
    def puts
        p "puts"
    end
end
 =end
obj = Child.new

# obj.method
=begin 
puts Child.ancestors
puts "Child".respond_to?(:upcase)
puts 3.respond_to?(:upcase)
=end

# obj.puts


class Parent
    def initialize(fname)
        @fname = fname
    end
end

class NewChild < Parent
    def initialize(fname,lname)
        super(fname)
        # p fname # we are able to access this variables also from Parent
        @lname = lname
    end
    def display 
        puts "#{@fname} newChild #{@lname}"
    end
end

obj2 = NewChild.new("rahul","kumar")
puts obj2.display




=begin 
class P1 
    def sample(n1,n2)
        p n1+n2
    end
end

class C1 < P1
    def sample(n1,n2)
        super   # if we don't pass arguments also in super(n1,n2). in ruby it will work
        p n1*n2
    end
end

objc = C1.new
objc.sample(4,3)
=end


