class Str
    def capitalize(value)
        super
        # p "hello #{value}"
    end
end

s = Str.new
# p s.to_s
# p "ste".capitalize

s.capitalize("raasgs")

p Str.ancestors
p s.respond_to?(:capitalize)


# class Demo
#     def object_id
#         super
        
#     end
# end

# d=Demo.new
# puts d.object_id



