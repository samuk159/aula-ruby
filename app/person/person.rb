class Person

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all.append(self)
    end

    def is_major?
        @age >= 18  
    end

    def self.all
        @@all
    end

end