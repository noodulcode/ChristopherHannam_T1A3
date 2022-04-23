require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Colors - 
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Miami Blue
# High cost $18000 - Custom Color

class Colors #< Spec
    attr_reader :color, :price
    def initialize(color, price)
        @color = color
        @price = price
    end
  end
    def to_s
        return $paint = "#{@color} paint for $#{@price}"
    end
    # def choose
    #     @options << {selection: price}
    # end

   
  #   def color
  #   no_cost = ["White", "Black", "Red", "Yellow"]
  #   premium = ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"]
  # $prompt.select("No Cost Options:", no_cost, "Premium Colors:", premium)
  # no_cost
  # premium
  #   end

#   choices = {small: 1, medium: 2, large: 3}
# prompt.select("What size?", choices)
# =>
# What size? (Press ↑/↓ arrow to move and Enter to select)
# ‣ small
#   medium
#   large
# prompt.select("What size?") do |menu|
#   menu.choice name: "small",  value: 1
#   menu.choice name: "medium", value: 2, disabled: "(out of stock)"
#   menu.choice name: "large",  value: 3
# end
# =>
# What size? (Press ↑/↓ arrow to move and Enter to select)
# ‣ small
# ✘ medium (out of stock)
#   large
# def color
# no_cost = {"White" => 0, "Black" => 0, "Red"=>  0, "Yellow" => 0} 
# premium = {"White Metallic:" => 6000, "GT Silver:" => 6000, "Metallic Navy:" => 6000, "Chalk Grey:" => 6000, "Bluesky:" => 6000}
#     start = $prompt.select("No Cost Colors:", [no_cost], "Premium Colors:", [premium]) do |menu|
#       color.no_cost
#       color.premium
#     end
#   end
  

    def color
      start = $prompt.select("No Cost Colors:".colorize(:red), ["White", "Black", "Red", "Yellow"], "Premium Colors:".colorize(:red), ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Gray", "Bluesky"], "Custom Color", "Exit", per_page: 16)
      start
    end
    # def spec(color)
    #   @color << color
    # end
  
    option = ""
    while option != "Exit"
      option = color
    case option
    when "White"
      puts paint = Colors.new("White", 0)
    when "Black"
      puts paint = Colors.new("Black", 0)
    when "Red"
      puts paint = Colors.new("Red", 0)
    when "Yellow"
      puts paint = Colors.new("Yellow", 0)
    when "Premium Colors:"
      puts "Not a valid selection"
    when "White Metallic"
      puts paint = Colors.new("White Metallic", 6000)
    when "GT Silver"
      puts paint = Colors.new("GT Silver", 6000)
    when "Navy Metallic"
      puts paint = Colors.new("Navy Metallic", 6000)
    when "Chalk Gray"
      puts paint = Colors.new("Chalk Gray", 6000)
    when "Miami Blue"
      puts paint = Colors.new("Miami Blue", 6000)
    when "Custom Color"
      puts paint = Colors.new("Custom Color", 18000)
    when "Exit"
      next 
    end
  end



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



# color_spec = Colors.new("GT Silver", "6000")
# puts color_spec


# Class Colors
#     def initialize(["White", "Black", "Red", "Yellow"], ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Miami Blue"], ["Custom Color"]
#         @no_cost = no cost
#         @extra_cost = extra cost
#         @high_cost = high cost
#     end
# end





# or?
#   if color == "White" || color == "Black" || color == "Red" || color == "Yellow"
#     spec.color()