class Str
    def capitalize(value)
        # super
        p "hello #{value}"
    end
end

s = Str.new
s.capitalize("raa")

p Str.ancestors
p s.respond_to?(:capitalize)


class B 
    #  from Object class 
    def display
    end
    
    # from Kernal module
    def puts 
    end

    # from String class
    def replace
    end

    def new
    end

    #Integer / Math class
    def round
    end

    # Basic Object class
    def  instance_exec
    end

end




b= Base.new
puts b.respond_to?(:puts)
puts b.respond_to?(:display)
puts b.respond_to?(:replace)
puts b.respond_to?(:round)
puts b.respond_to?(:instance_exec)
puts b.respond_to?(:new)


