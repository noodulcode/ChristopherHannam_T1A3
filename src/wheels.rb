# Wheels -
# No cost - 20 inch Forged Aluminium
# Extra cost $28000 - 20 inch Forged Magnesium
# High cost $38000 (no color options) - 20 inch Carbon Fibre




# Class Wheels
#     def initialize(no_cost, extra_cost, high_cost)
#         @no_cost = no cost
#         @extra_cost = extra cost
#         @high_cost = high cost
#     end
# end

class Wheels
    def initialize(wheel, price)
        @wheel = wheel
        @price = price
    end

    def to_s
        return "Pocer Primacara 4SRGT with #{@wheel} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end



spec = Wheels.new("20 inch Forged Magnesium", "28000")
puts spec