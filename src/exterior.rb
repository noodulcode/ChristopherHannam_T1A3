require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new

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
    def initialize(body, carbon, price)
        @body = body
        @carbon = carbon
        @price = price
    end

    def to_s
        return "#{@body} for #{@price}"
                "#{carbon} for #{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end


eterior_spec = Interior.new("Alcantara Bucket seats and Accents", "3000")
puts exterior_spec