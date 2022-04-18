# Spec is the Superclass of all options and subclass of Car
require "tty-prompt"

class Spec# < Car
    @@full_spec = []
    def initialize(color, wheels, wheel_color, interior, audio)
        @color = color
        @wheels = wheels
        @wheel_color = wheel_color
        @interior = interior
        #@exterior = 
        #@mechanical = []
        @audio = audio
        @@full_spec = []
    end
end

    def self.full_spec
        @@full_spec
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
  # when "Exterior"
  #   require_relative("./exterior.rb")
  # when "Mechanical"
  #   require_relative("./mechanical.rb")
  when "Audio"
    require_relative("./audio.rb")
  when "Exit"
    next
  end
end


# new_spec.each do |option|
#     puts option
#   end
# def my_car
# spec = Spec.new([Colors.new], [Wheels.new], [WheelColors.new], [Interior.new], [Audio.new])
# end
















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





#code from index.rb probaly garbage
#Intro
# def new_spec
#   require_relative("./spec.rb")
# end
# option = ""
# while option != "Exit"
#   option = new_spec
#   case option
#   when "Color" 
#     require_relative("./colors.rb")
#   when "Wheels"
#     require_relative("./wheels.rb")
#   when "Wheel Color"
#     require_relative("./wheelcolors.rb")
#   when "Interior"
#     require_relative("./interior.rb")
#   # when "Exterior"
#   #   require_relative("./exterior.rb")
#   # when "Mechanical"
#   #   require_relative("./mechanical.rb")
#   when "Audio"
#     require_relative("./audio.rb")
#   when "Exit"
#     next
#   end
# end