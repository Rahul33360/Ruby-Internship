class Customer1 < ApplicationRecord


    validates :name , moderate: true
    validates :email, moderate: true





=begin 
    def check_email
        # check email present or not
        if @user.email.present?
            p "Present"
        else
            p "No Email"
    end
    def check_name
        # check name has only alphabetic values
        if @user.name.present?
            p "name present"
        else
            p "end"
    end
=end
end
