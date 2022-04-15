# About - Superclass to Spec, subclass to Object????????????????????
# Name- Pocer Primacara 4SRGT
# About - The Pocer Primacara 4SRGT is purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power. 
# Base Price - $310,000


class About
    attr_reader :about :base_price
    def initialize(about, base_price,)
        @about = about
        @base_price = "The Pocer Primacara 4SRGT has a starting price of $310,000 plus extras."
    end
end


#Show About
def about
    puts "The Pocer Primacara 4SRGT is a purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power."
end
#Show Price
def base_price
    puts "The Pocer Primacara 4SRGT has a starting price of $310,000 plus extras."
end