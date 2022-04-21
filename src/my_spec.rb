require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Colors - 
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Miami Blue
# High cost $18000 - Custom Color

class MySpec #< Spec
    attr_reader :color, :price
    def initialize(color, price)
        @color = color
        @price = price
    end
  end
    def to_s
        return $user_spec = [$paint, $rim, $rim_col, $seats, $stereo]
    end
    
    # def remove_option(user_spec)
    #   print "Type the first word of the option you would like to delete"
    #   option = gets.chomp
    #   user_spec.push(option)
    #   print my_spec
    
    


    def user_options
      start = $prompt.select("My Spec:", ["Show My Spec", "Spec Cost", "Remove Option", "Reset My Spec", "Exit"])
      start
    end
    def delete_option
      start = $prompt.select("Choose an option to delete:", [$my_spec], "Exit")
      start
    puts $prompt.yes?("Are you sure you want to remove selected option?")
    confirm = gets.chomp
    if confirm == "y"
      delete_option.delete(option)
    else puts "User Cancelled"
  end
end

    option = ""
    while option != "Exit"
      option = user_options
    case option
    when "Show My Spec"
      puts $my_spec = [$paint, $rim, $rim_col, $seats, $stereo]
    when "Spec Cost"
        puts spec_price = $user_spec.sum {|h| $user_spec[:price] }
    when "Remove Option"
      puts $my_spec = [$paint, $rim, $rim_col, $seats, $stereo]
      puts delete_option
    when "Reset My Spec"
      require_relative("./spec.rb")
    when "Exit"
      next 
    end
  end

  # def spec_price
  #   spec_price = user_spec.sum {|cost| cost[:amount] }
  #   puts spec_price
  # end
 
 # def spec(color)
    #   @color << color
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