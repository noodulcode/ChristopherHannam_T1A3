#require_relative("./wheels.rb")
require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

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
  attr_reader :color, :price
    def initialize(color, price)
        @color = color
        @price = price
    end

    def to_s
      #return wheel_colors.wheel
      return $rim_col = "Wheels painted in #{@color} for $#{@price}"
      #return "#{@wheel} in #{@color} for $#{@price}" #wheel doesn't work or takes too much info
    end
    
    

    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end





def wheel_colors
    start = $prompt.select("No Cost Colors:".colorize(:red), ["Silver", "White"], "Premium Colors:".colorize(:red), ["Black", "Satin Black", "Satin Copper", "Satin Deep Blue"], "Special Color:".colorize(:red), ["Satin Black with Yellow rim borders (not available on carbon fibre wheels)"], "Exit", per_page: 16)
    start
  end
  
  option = ""
  while option != "Exit"
  option = wheel_colors
  case option
  when "Silver"
    puts rim_col = WheelColors.new("Silver", 0)
  when "Silver"
    puts rim_col =  WheelColors.new("White", 0)
  when "Premium Colors:"
    puts "Not a valid selection"
  when "Black"
    puts rim_col =  WheelColors.new("Black", 1000)
  when "Satin Black"
    puts rim_col =  WheelColors.new("Satin Black", 1000)
  when "Satin Copper"
    puts rim_col =  WheelColors.new("Satin Copper", 1000)
  when "Satin Deep Blue"
    puts rim_col =  WheelColors.new("Satin Deep Blue", 1000)
  when "Special Color:"
    puts "Not a valid selection"
  when "Satin Black with Yellow rim borders (not available on carbon fibre wheels)" && @wheel != "20 inch Carbon Fibre"
    puts rim_col =  WheelColors.new("Satin Black with Yellow rim borders", 2000)
  when "Exit"
    next 
  else 
    puts "That wheel/color combination is incompatible"
  end
  end

#   wheel_color_spec = Wheel_colors.new("Satin Black", "1000")
#   puts wheel_color_spec