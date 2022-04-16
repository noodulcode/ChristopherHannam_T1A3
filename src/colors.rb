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

    def color
      start = $prompt.select("No Cost Colors:".colorize(:red), ["White", "Black", "Red", "Yellow"], "Premium Colors:".colorize(:red), ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"], "Custom Color", "Exit", per_page: 16)
      start
    end
    def spec(color)
      @color << color
    end
  
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