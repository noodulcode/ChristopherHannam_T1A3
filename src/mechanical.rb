require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new

# Mechanical -
#             No cost - Dual Clutch 7 Speed Gearbox with Paddle Shift, 6 Speed Manual
#             Extra cost $4000 - Hydraulic push button Front Nose Lift, Magnesium Sports Exhaust with Valve Control and Magnesium Tips
#             High cost $38000 - Prima Race Package - includes(Fire Extinguisher, Lap Timer, 12 o'clock steering wheel marker, Body 
#                                Colored Seat Belts, Ceramic Brakes, Adjustable Suspension, Half Cage, Battery Disconnect Switch) 
#                                (*only available with Magnesium or Carbon Fibre Wheels and Race Bucket Seats)


# Class Mechanical
# def initialize(no_cost, extra_cost, high_cost)
#     @no_cost = no cost
#     @extra_cost = extra cost
#     @high_cost = high cost
# end
# end

class Mechanical #< Spec
    def initialize([gearbox], [mechanical], [price])
        @gearbox = gearbox
        @mechanical = mechanical
        @price = price
    end

    def to_s
        return "#{@gearbox} for $#{@price}, #{@mechanical} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end

def mechanical
    start = $prompt.select("No Cost Options:", ["Dual Clutch 7 Speed Gearbox with Paddle Shift", "6 Speed Manual"], "Premium Options:", ["Hydraulic push button Front Nose Lift", "Magnesium Sports Exhaust with Valve Control and Magnesium Tips"], "Special Option:", ["Prima Race Package - includes(Fire Extinguisher, Lap Timer, 12 o'clock steering wheel marker, Body Colored Seat Belts, Ceramic Brakes, Adjustable Suspension, Half Cage, Battery Disconnect Switch) (*only available with Magnesium or Carbon Fibre Wheels and Race Bucket Seats)"], "Exit")
    start
  end
def 
    require_relative("./spec.rb")


  option = ""
  while option != "Exit"
    option = mechanical
    case option
    when "Hydraulic push button Front Nose Lift"
        puts Mechanical.new("Hydraulic push button Front Nose Lift", 4000)
    when "Magnesium Sports Exhaust with Valve Control and Magnesium Tips"
        puts Mechanical.new("Magnesium Sports Exhaust with Valve Control and Magnesium Tips", 4000)
    when "Prima Race Package - includes(Fire Extinguisher, Lap Timer, 12 o'clock steering wheel marker, Body Colored Seat Belts, Ceramic Brakes, Adjustable Suspension, Half Cage, Battery Disconnect Switch) (*only available with Magnesium or Carbon Fibre Wheels and Race Bucket Seats)"
        puts Mechanical.new("Prima Race Package", 38000)
    when "Exit"
        next  
    end
end



# mechanical_spec = Interior.new("Alcantara Bucket seats and Accents", "3000")
# puts mechanical_spec