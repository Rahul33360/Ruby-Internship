class Product1 < ApplicationRecord
    
    def check_avaliability
        # check for stock value more than 0
        # Product1.stock.select{|i| i > 0}
        if stock > 0
            return true 
        else
            return false
    end
    def apply_discount(amount)
        # apply discount using case statements
        case amount
        when 0..100
            return discount = 10
        when 101..200
            return discount = 20
        when 201..300
            return discount = 30
        else
            return discount = 5
        end
    end

    def total_amout(amount)
        # first check_avaliability then apply discount
        # call the apply_discount(value)
        total_amout = 0
        if check_avaliability 
            dis = apply_discount(amount)
            total_amout -= dis 
        # use any math method like round to roundoff the amount.
    end


    
    # pluck helps us to get the specific column and we need to pass it as symbol.

=begin  
    @status = Product1.all.limit(10).pluck(:is_active).select{|val| val == false}
    @price  = Product1.all.pluck(:price).select{|pri| pri<200}.map{|i| i.to_i}.each{|j| j<11}
    @stock  = Product1.all.limit(10).pluck(:stock)
=end

end
# Q create the method inside a model assign a value to the all collecting values from the products and use select and apply condition if the price is greater then 200 then fetch that 10 elements in the front end






=begin  
 arr = Product1.all.limit(10)
 arr.map {|stock| stock*10}
=end