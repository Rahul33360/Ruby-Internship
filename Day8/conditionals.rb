=begin 
stock = 20
is_avaliable = false
if stock > 0
    is_avaliable = true
else 
    p "Item not avaliable."
end

p is_avaliable


#terniary operator
isactive = true
val = isactive ? "Item Present": "Not Present"
p val


# if,elsif,else

price = 100
discount = 10
if price >= 100
    discount = 10
elsif price > 200
    discount = 20
elsif price > 300
    discount = 30
else
    discount = 5
end
p discount


case price
when 0..100
    discount = 10
when 101..200
    discount = 20
when 201..300
    discount = 30
else
    discount = 5
end

p discount

case 
when price >= 100 && price <= 200
    discount = 10
when price >= 300 && price <= 400
    discount = 20
when price >= 400 && price <= 500
    discount = 30
else
    discount = 5
end

p discount
=end

=begin 
unless condition
  # Code to be executed if the condition is false
else
  # Code to be executed if the condition is true
end
=end

email = "rahul@gmail.com"
unless email
    p "Email unavaliable"
else
    p "Email avaliable"
end

age = 15
unless age >= 18
  puts "You are not old enough to vote."
else
  puts "You are old enough to vote."
end
# Output: You are not old enough to vote.


