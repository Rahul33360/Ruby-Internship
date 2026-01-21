class Animal
    def eat
        p "animal eating"
    end
    protected
    def run 
        p "animal runs"
    end
end

class Dog < Animal
    def eat
        p "Dog eating"
        run     # calling protected method in public eat method. inheriting class can access it.
        sleep   # calling private method in public eat method in same class. cannnot be accesible after the class
    end
    private 
    def sleep
        p "dog sleeping"
    end
end

obj = Dog.new
obj.eat