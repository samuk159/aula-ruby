module Helloable
    def hello  
        "Hello World"
    end
end

class IncludeClass
    include Helloable
end

class ExtendClass
    extend Helloable
end    