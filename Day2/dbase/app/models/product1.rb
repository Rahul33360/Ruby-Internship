class Product1 < ApplicationRecord
    
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