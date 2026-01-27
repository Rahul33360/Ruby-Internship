
class Demo2
    def set_name(name) 
        @name = name    # instance variable created here
    end

    def declair         # declair
        @name           # will be nil if set_name wasn't called yet
    end
end

obj4 = Demo2.new
p obj4.declair      # nil
obj4.set_name("Rahul")
p obj4.declair      # "Rahul"
