#require_relative("./wheels.rb")
require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new

# Wheel colors - Subclass of Wheels
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
require_relative("./wheels.rb")
class WheelColors < Wheels
  attr_reader :wheel, :price
    def initialize(color, price)
        @color = color
        @price = price
    end

    # def to_s
    #   #return wheel_colors.wheel
    #   #return wheel_color = "#{$wheel1} wheels painted in #{@color} for $#{@price}"
    #   #return "#{@wheel} in #{@color} for $#{@price}" #wheel doesn't work or takes too much info
    # end
    
    

    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end





def wheel_colors
    start = $prompt.select("No Cost Options:", ["Silver", "White"], "Premium Options:", ["Black", "Satin Black", "Satin Copper", "Satin Deep Blue"], "Special Color:", ["Satin Black with Yellow rim borders (not available on carbon fibre wheels)"], "Exit")
    start
  end
  
  option = ""
  while option != "Exit"
  option = wheel_colors
  case option
  when "Silver"
    puts WheelColors.new("Silver", 0)
  when "Silver"
    puts WheelColors.new("White", 0)
  when "Black"
    puts WheelColors.new("Black", 1000)
  when "Satin Black"
    puts WheelColors.new("Satin Black", 1000)
  when "Satin Copper"
    puts WheelColors.new("Satin Copper", 1000)
  when "Satin Deep Blue"
    puts WheelColors.new("Satin Deep Blue", 1000)
  when "Satin Black with Yellow rim borders (not available on carbon fibre wheels)" && @wheels != "20 inch Carbon Fibre"
    puts WheelColors.new("Satin Black with Yellow rim borders", 2000)
  when "Exit"
    next 
  else 
    "That wheel/color combination is incompatible"
  end
  end

#   wheel_color_spec = Wheel_colors.new("Satin Black", "1000")
#   puts wheel_color_spec