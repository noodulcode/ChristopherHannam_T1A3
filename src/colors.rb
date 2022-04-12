# Colors - 
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Bluesky
# High cost $18000 - Custom Color

class Colors
    def initialize(color, price)
        @color = color
        @price = price
    end

    def to_s
        return "Pocer Primacara 4SRGT in #{@color} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end



spec = Colors.new("GT Silver", "6000")
puts spec



# Class Colors
#     def initialize(["White", "Black", "Red", "Yellow"], ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"], ["Custom Color"]
#         @no_cost = no cost
#         @extra_cost = extra cost
#         @high_cost = high cost
#     end
# end
