def fact(num)
    val = 1
    num.downto(1) do |i|
        val *= i
    end
    return val
end

val = gets.chomp.to_i

puts fact(val)