class String
    def rot13
        self.tr('A-Ma-mN-Zn-z', 'N-Zn-zA-Ma-m')
    end
end

str = "Sawasdee Krub !"

puts str.rot13 
