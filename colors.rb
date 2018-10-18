class Colors
    @colors = ['red', 'blue', 'green']

    def self.each
        if block_given?
            @colors.each { |color| yield color }
        else 
            @colors
        end
    end            
end        