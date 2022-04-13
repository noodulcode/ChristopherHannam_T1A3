# Colors - 
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Bluesky
# High cost $18000 - Custom Color

class Colors < Spec
    attr_reader :color, :price
    def initialize(color, price)
        @color = color
        @price = []
    end

    def to_s
        return "Pocer Primacara 4SRGT in #{@color} for $#{@price}"
    end
    # def choose
    #     @options << {selection: price}
    # end



#Methods for adding a paint color and the price to the spec sheet for color
    # def spec(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
    # def show_color_spec
    # puts "Pocer Primacara 4SRGT in #{@color} for $#{@price}"
    # end
    # Calling the methods:
    # spec.color(color)
    # cost.price(price)
    # color.show_color_spec



color_spec = Colors.new("GT Silver", "6000")
puts color_spec


# Class Colors
#     def initialize(["White", "Black", "Red", "Yellow"], ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"], ["Custom Color"]
#         @no_cost = no cost
#         @extra_cost = extra cost
#         @high_cost = high cost
#     end
# end



def color
    start = $prompt.select("No Cost Options:", ["White", "Black", "Red", "Yellow"], "Premium Colors:", ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"])
    start
  end

  option = ""
while option != "Exit"
  option = color
  case option
  when "White"
    spec.color("White") && cost.price(0)
  when "Black"
    spec.color("Black") && cost.price(0)
  when "Red"
    spec.color("Red") && cost.price(0)
  when "Yellow"
    spec.color("Yellow") && cost.price(0)
when "White Metallic"
    spec.color("White Metallic") && cost.price(6000)
when "GT Silver"
    spec.color("GT Silver") && cost.price(6000)
when "Navy Metallic"
    spec.color("Navy Metallic") && cost.price(6000)
when "Chalk Gray"
    spec.color("Chalk Gray") && cost.price(6000)
when "Miami Blue"
    spec.color("Miami Blue") && cost.price(6000)
when "Custom Color"
    spec.color("Custom Color") && cost.price(18000)
  else 
    puts select_option
    next 
  end
end

# or?
#   if color == "White" || color == "Black" || color == "Red" || color == "Yellow"
#     spec.color()