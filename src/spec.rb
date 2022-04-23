# Spec is the Superclass of all options
require "tty-prompt"

class Spec
    def initialize(color, wheels, wheel_color, interior, audio)
        @color = color
        @wheels = wheels
        @wheel_color = wheel_color
        @interior = interior
        @audio = audio
    end
end


# Methods to write:
# start a new spec, delete option method, reset all options method - inherited
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)
    
 def new_spec
   spec = $prompt.select("Select a category to start optioning", ["Color", "Wheels", "Wheel Color", "Interior", "Audio"], "Exit", per_page: 16)
   spec
 end
 option = ""
while option != "Exit"
  option = new_spec
  case option
  when "Color" 
    require_relative("./colors.rb")
  when "Wheels"
    require_relative("./wheels.rb")
  when "Wheel Color"
    require_relative("./wheelcolors.rb")
  when "Interior"
    require_relative("./interior.rb")
  when "Audio"
    require_relative("./audio.rb")
  when "Exit"
    next
  end
end
