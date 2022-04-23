require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Interior -
#          No cost - Leather Comfort Seats and Accents
#          Extra cost $3000 - Alcantara Comfort Seats and Accents, Alcantara Bucket seats and Accents, Electrically Adjustable
#                               Leather Comfort Seats and Accents
#          High cost $5000 - Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents

# Class Interior
# def initialize(no_cost, extra_cost, high_cost)
#     @no_cost = no cost
#     @extra_cost = extra cost
#     @high_cost = high cost
# end
# end

class Interior < Spec
    attr_reader :seats, :price
    def initialize(seats, price)
        @seats = seats
        @price = price
    end

    def to_s
        return $seats = "#{@seats} for $#{@price}"
    end
end

    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end





def interior
    start = $prompt.select("No Cost Options:".colorize(:red), ["Leather Comfort Seats and Accents"], "Premium Options:".colorize(:red), ["Alcantara Comfort Seats and Accents", "Alcantara Bucket seats and Accents", "Electrically Adjustable Leather Comfort Seats and Accents"], "Special Option:".colorize(:red), ["Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents"], "Exit", per_page: 16)
    start
  end

  option = ""
  while option != "Exit"
    option = interior
    case option
    when "Leather Comfort Seats and Accents"
        puts seats = Interior.new("Leather Comfort Seats and Accents", 0)
    when "Premium Options:"
        puts "Not a valid selection"
    when "Alcantara Comfort Seats and Accents"
        puts seats = Interior.new("Alcantara Comfort Seats and Accents", 3000)
    when "Alcantara Bucket seats and Accents"
        puts seats = Interior.new("Alcantara Bucket seats and Accents", 3000)
    when "Electrically Adjustable Leather Comfort Seats and Accents"
        puts seats = Interior.new("Electrically Adjustable Leather Comfort Seats and Accents", 3000)
    when "Special Option:"
        puts "Not a valid selection"
    when "Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents"
        puts seats = Interior.new("Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents", 5000)
    when "Exit"
        next  
    end
  end

# interior_spec = Interior.new("Alcantara Bucket seats and Accents", "3000")
# puts interior_spec