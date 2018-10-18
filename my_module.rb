module MyModule
    def MyModule.hello
        puts "Hello from module"
    end
    
    def self.hello
        puts "Hello from module self"
    end
    
    def hello
        puts "Hello from instance"
    end
end        