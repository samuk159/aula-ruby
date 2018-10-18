class Parent 
    @value = 1

    def self.value_method
        @value
    end    
end    

class Child < Parent
    @value = 2
end    