class Temperature

    attr_accessor :value, :unit

    def initialize(value, unit)
        @value = value
        @unit = unit
    end   

    def to_celsius
        case @unit
        when "C"
            return @value
        when "F"
            return (@value - 32) * 5.0/9.0 
        when "K"
            return (@value - 273.15) * 9.0/5.0 + 32 
        else
            return "Unidade Inválida"
        end                                 
    end    

    def to_fahrenheit
        case @unit
        when "C"
            return @value * 9.0/5.0 + 32
        when "F"
            return @value 
        when "K"
            return (@value - 273.15) * 9.0/5.0 + 32 
        else
            return "Unidade Inválida"
        end                                 
    end

    def to_kelvin
        case @unit
        when "C"
            return @value + 273.15
        when "F"
            return (@value - 32) * 5.0/9.0 + 273.15 
        when "K"
            return @value
        else
            return "Unidade Inválida"
        end                                 
    end
    
end    