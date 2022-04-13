#require_relative("./wheels.rb")

# Wheel colors - 
# No cost - Silver, White
# Extra Cost $1000 - Black, Satin Black, Satin Copper, Satin Deep Blue
# High cost $2000 - Satin Black with Yellow rim borders (not on carbon fibre)

# Class Wheel_Colour
#     def initialize(no_cost, extra_cost, high_cost)
#         @no_cost = no cost
#         @extra_cost = extra cost
#         @high_cost = high cost
#     end
# end

class Wheel_colors
    def initialize(color, price)
        @color = color
        @price = price
    end

    def to_s
        return "#{@wheel} in #{@color} for $#{@price}" #wheel doesn't work or takes too much info
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end



wheel_color_spec = Wheel_colors.new("Satin Black", "1000")
puts wheel_color_spec