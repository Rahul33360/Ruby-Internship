# reverse the string 
# logic
def reverse(name)
    reversed_name=""
    idx = name.length
    (idx-1).downto(0) do |i|
        reversed_name << name[i]
    end
    return reversed_name
end


val = gets.chomp
puts reverse(val)

# inbuild
puts "name".reverse

