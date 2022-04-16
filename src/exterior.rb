require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# How to be able to select as many options as you like???

# Exterior - 
#             No cost - Carbon Fibre Rear Wing, Painted Brake Calipers, Badge Deletion
#             Extra cost $3000 - Carbon Fibre Roof
#             High cost $9000 - Carbon Fibre Roof and Bonnet and full Accent Package


# Class Exterior
# def initialize(no_cost, extra_cost, high_cost)
#     @no_cost = no cost
#     @extra_cost = extra cost
#     @high_cost = high cost
# end
# end


class Exterior #< Spec
    def initialize(exterior, price) #(body, carbon, price)
        #@body = body
        @exterior = exterior
        @price = price
    end

    def to_s
        return #"#{@body} for #{@price}"
                "#{carbon} for #{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end


def exterior
    start = $prompt.collect"No Cost Options:", ["Carbon Fibre Rear Wing", "Painted Brake Calipers", "Badge Deletion"], "Premium Options:", ["Carbon Fibre Roof"], "Premium Option:", ["Carbon Fibre Roof and Bonnet and full Accent Package"], "Exit")
    start
  end

  option = ""
  while option != "Exit"
    option = exterior
    case option
    when "Carbon Fibre Rear Wing"
        puts Exterior.new("Carbon Fibre Rear Wing", 0)
    when "Painted Brake Calipers"
        puts Exterior.new("Painted Brake Calipers", 0)
    when "Badge Deletion"
        puts Exterior.new("Badge Deletion", 0)
    when "Carbon Fibre Roof"
        puts Exterior.new("Carbon Fibre Roof", 3000)
    when "Carbon Fibre Roof and Bonnet and full Accent Package"
        puts Exterior.new("Carbon Fibre Roof and Bonnet and full Accent Package", 9000)
    when "Exit"
        next  
    end
  end


# exterior_spec = Exterior.new("Alcantara Bucket seats and Accents", "3000")
# puts exterior_spec