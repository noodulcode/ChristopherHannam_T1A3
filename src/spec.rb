# Spec is the Superclass of all options and subclass of Car
require_relative("./car.rb")
require "tty-prompt"

class Spec# < Car
    def initialize(color, wheels, wheel_color, interior, exterior, mechanical, audio)
        @color = color
        @wheels = wheels
        @wheel_color = wheel_color
        @interior = interior
        @exterior = exterior
        @mechanical = mechanical
        @audio = audio
    end
end

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
     colors.new
   end
 end
puts new_spec

# #or

# $prompt = TTY::Prompt.new
