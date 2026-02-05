def palindrome_or_not(value)
    i=0
    j=value.length-1
    bool = true
    while i<j do
        if value[i] != value[j]
            bool = false
            break
        end
        i += 1
        j -= 1
    end
    return bool
end

val = gets.chomp

puts palindrome_or_not(val)
# puts palindrome_or_not("madam")

