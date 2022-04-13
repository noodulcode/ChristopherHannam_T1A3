# The Car - Superclass to Spec, subclass to Object
# Name- Pocer Primacara 4SRGT
# About - The Pocer Primacara 4SRGT is purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power. 
# Base Price - $310,000
# Spec - Chosen Specification
# Spec Price - Specification items total cost
# Total Price - Total cost of car
# Confirm - Confirm and place order
# Download - Download an itemisation of your order
# Check estimated build date??


class Car
    attr_reader :about
    def initialize(name, about, base_price, spec_list, spec_price, total_price, confirm, download)
        @name = name
        @about = about
        @base_price = base price
        @spec_list = []
        @spec_price = []
        @total_price = []
        @confirm = []
        @download = []
    end
end

car = Car.new #does this go at the end of the program to display a full specced car?


#Show About
def about
    puts "The Pocer Primacara 4SRGT is a purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power."
end

  #Show Price
def show_price
    puts "The Pocer Primacara 4SRGT has a starting price of $310,000 plus extras."
end


# Methods to write:
# add spec list, delete or reset all specs, confirm order and send it off, 
# download order details to user, show about, show base price, 