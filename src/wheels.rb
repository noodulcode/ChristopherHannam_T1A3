require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Wheels - Superclass of Wheel Colors, subclass of Spec
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

class Wheels < Spec
    attr_reader :wheel, :price
    def initialize(wheel, price)
        @wheel = wheel
        @price = price
    end

  def to_s
    #$wheel1 = ["#{@wheel} wheels", "$#{@price}"]
    return $rim = "#{@wheel} wheels for $#{@price}"
    #return "#{@wheel} in #{@color} for $#{@price}" #wheel doesn't work or takes too much info
  end
  
  
    # def to_s
    #     wheel_spec = "#{@wheel} wheels for $#{@price}"
    #     puts wheel_spec
    # end

    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end





def wheels
    start = $prompt.select("No Cost Wheels:".colorize(:red), ["20 inch Forged Aluminium"], "Premium Wheels:".colorize(:red), ["20 inch Forged Magnesium"], "Special Wheels:".colorize(:red), ["20 inch Carbon Fibre"], "Exit", per_page: 16)
    start
  end

  option = ""
while option != "Exit"
  option = wheels
  case option
  when "20 inch Forged Aluminium"
    puts rim = Wheels.new("20 inch Forged Aluminium", 0)
  when "Premium Wheels:"
    puts "Not a valid selection"
  when "20 inch Forged Magnesium"
    puts rim =  Wheels.new("20 inch Forged Magnesium", 28000)
  when "Special Wheels:"
    puts "Not a valid selection"
  when "20 inch Forged Aluminium"
    puts rim =  Wheels.new("20 inch Carbon Fibre", 38000)
  when "Exit"
    next
  end
end


# wheel_spec = Wheels.new("20 inch Forged Magnesium", "28000")
# puts wheel_spec