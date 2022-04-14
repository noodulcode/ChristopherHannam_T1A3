require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new

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

class Interior #< Spec
    def initialize(seats, price)
        @seats = seats
        @price = price
    end

    def to_s
        return "#{@seats} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end




def interior
    start = $prompt.select("No Cost Options:", ["Leather Comfort Seats and Accents"], "Premium Options:", ["Alcantara Comfort Seats and Accents", "Alcantara Bucket seats and Accents", "Electrically Adjustable Leather Comfort Seats and Accents"], "Premium Option:", ["Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents"], "Exit")
    start
  end

  option = ""
  while option != "Exit"
    option = interior
    case option
    when "Leather Comfort Seats and Accents"
        puts Interior.new("Leather Comfort Seats and Accents", 0)
    when "Alcantara Comfort Seats and Accents"
        puts Interior.new("Alcantara Comfort Seats and Accents", 3000)
    when "Alcantara Bucket seats and Accents"
        puts Interior.new("Alcantara Bucket seats and Accents", 3000)
    when "Electrically Adjustable Leather Comfort Seats and Accents"
        puts Interior.new("Electrically Adjustable Leather Comfort Seats and Accents", 3000)
    when "Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents"
        puts Interior.new("Carbon Fibre Racing Bucket seats lightweight with 6 point Harnesses and Carbon Fibre Accents", 5000)
    when "Exit"
        next  
    end
  end

# interior_spec = Interior.new("Alcantara Bucket seats and Accents", "3000")
# puts interior_spec