class Person
    attr_reader :name, :age
    attr_writer :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end    
end        