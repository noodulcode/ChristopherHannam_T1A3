# Spec is the Superclass of all options and subclass of Car
# require_relative("./car.rb")
require "tty-prompt"

class Spec# < Car
    def initialize(color, wheels, wheel_color, interior, exterior, mechanical, audio)
        @color = []
        @wheels = []
        @wheel_color = []
        @interior = []
        @exterior = []
        @mechanical = []
        @audio = []
    end
end

require_relative("./colors.rb")
require_relative("./wheels.rb")
require_relative("./wheelcolors.rb")
require_relative("./interior.rb")
require_relative("./exterior.rb")
require_relative("./mechanical.rb")
require_relative("./audio.rb")
spec = Spec.new([Colors.new], [Wheels.new], [WheelColors.new], [Interior.new], [Audio.new])








# Methods to write:
# start a new spec, delete option method, reset all options method - inherited
$prompt = TTY::Prompt.new
    
 def new_spec
   spec = $prompt.select("Select a category to start optioning", ["Color", "Wheels", "Wheel Color", "Interior", "Exterior", "Mechanical", "Audio"])
   spec
 end
 option = ""
 while option != "Exit"
   option = $new_spec
   case option
   when "Color"
     Colors.new
   end
 end
puts new_spec

# #or

#Create a new spec
# def new_spec
#     start = $prompt.select("Select a category to start optioning", ["Color", "Wheels", "Wheel Color", "Interior", "Exterior", "Mechanical", "Audio"])
#     start
#   end
#   option = ""
#   while option != "Exit"
#     option = new_spec
#     case option
#     when "Color"
#       color
#     end
#   end
