require 'colorize'
require "tty-prompt"
require "tty-progressbar"
require_relative("./car.rb")
require_relative("./colors.rb")

=begin   GEM USES - delete before submit
COLORIZE
String.colors                       # return array of all possible colors names
String.modes                        # return array of all possible modes
String.color_samples                # displays color samples in all combinations
String.disable_colorization         # check if colorization is disabled
String.disable_colorization = false # enable colorization
String.disable_colorization false   # enable colorization
String.disable_colorization = true  # disable colorization
String.disable_colorization true    # disable colorization
puts "This is blue".colorize(:blue)
puts "This is light blue".colorize(:light_blue)
puts "This is also blue".colorize(:color => :blue)
puts "This is light blue with red background".colorize(:color => :light_blue, :background => :red)
puts "This is light blue with red background".colorize(:light_blue ).colorize( :background => :red)
puts "This is blue text on red".blue.on_red
puts "This is red on blue".colorize(:red).on_blue
puts "This is red on blue and underline".colorize(:red).on_blue.underline
puts "This is blue text on red".blue.on_red.blink
puts "This is uncolorized".blue.on_red.uncolorize
require 'colorized_string'
ColorizedString.colors                       # return array of all possible colors names
ColorizedString.modes                        # return array of all possible modes
ColorizedString.color_samples                # displays color samples in all combinations
ColorizedString.disable_colorization         # check if colorization is disabled
ColorizedString.disable_colorization = false # enable colorization
ColorizedString.disable_colorization false   # enable colorization
ColorizedString.disable_colorization = true  # disable colorization
ColorizedString.disable_colorization true    # disable colorization
puts ColorizedString["This is blue"].colorize(:blue)
puts ColorizedString["This is light blue"].colorize(:light_blue)
puts ColorizedString["This is also blue"].colorize(:color => :blue)
puts ColorizedString["This is light blue with red background"].colorize(:color => :light_blue, :background => :red)
puts ColorizedString["This is light blue with red background"].colorize(:light_blue ).colorize( :background => :red)
puts ColorizedString["This is blue text on red"].blue.on_red
puts ColorizedString["This is red on blue"].colorize(:red).on_blue
puts ColorizedString["This is red on blue and underline"].colorize(:red).on_blue.underline
puts ColorizedString["This is blue text on red"].blue.on_red.blink
puts ColorizedString["This is uncolorized"].blue.on_red.uncolorize
puts ColorizedString.new("This is blue").blue
puts ColorizedString.new("This is light blue").colorize(:light_blue)

TTY PROMPT
prompt = TTY::Prompt.new

prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
# =>
# Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax

choices = %w(vodka beer wine whisky bourbon)
prompt.multi_select("Select drinks?", choices)
# =>
#
# Select drinks? (Use ↑/↓ arrow keys, press Space to select and Enter to finish)"
# ‣ ⬡ vodka
#   ⬡ beer
#   ⬡ wine
#   ⬡ whisky
#   ⬡ bourbon

choices = %w(emacs nano vim)
prompt.enum_select("Select an editor?", choices)
# =>
#
# Select an editor?
#   1) emacs
#   2) nano
#   3) vim
#   Choose 1-3 [1]:

choices = [
    { key: "y", name: "overwrite this file", value: :yes },
    { key: "n", name: "do not overwrite this file", value: :no },
    { key: "a", name: "overwrite this file and all later files", value: :all },
    { key: "d", name: "show diff", value: :diff },
    { key: "q", name: "quit; do not overwrite this file ", value: :quit }
  ]
  prompt.expand("Overwrite Gemfile?", choices)
  # =>
  # Overwrite Gemfile? (enter "h" for help) [y,n,a,d,q,h]

  result = prompt.collect do
    key(:name).ask("Name?")
  
    key(:age).ask("Age?", convert: :int)
  
    key(:address) do
      key(:street).ask("Street?", required: true)
      key(:city).ask("City?")
      key(:zip).ask("Zip?", validate: /\A\d{3}\Z/)
    end
  end
  # =>
  # {:name => "Piotr", :age => 30, :address => {:street => "Street", :city => "City", :zip => "123"}}

TTY PROGRESSBAR
bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)

30.times do
    sleep(0.1)
    bar.advance  # by default increases by 1
  end

=end


#pocer = Car.new("Pocer Primacara 4SRGT", "The Pocer Primacara 4SRGT is purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power.", "$310,000")


#color = Colors.new(["White", "Black", "Red", "Yellow"], ["White Metallic", "GT Silver", "Metallic Navy", "Chalk Grey", "Bluesky"], "Custom Color")




$prompt = TTY::Prompt.new
def select_option
  start = $prompt.select("Where to begin?", ["About the 4SRGT", "Base Price", "Spec a new 4SRGT", "Saved Session", "Exit"])
  start
end
system "clear"
puts "Welcome to the Pocer Primacara 4SRGT configurator. Please select from the options below"
option = ""
while option != "Exit"
  option = select_option
  case option
  when "About the 4SRGT"
    puts @about #not working
  when "Base Price"
    puts @base_price #not working
  when "Spec a new 4SRGT"
    $new_spec
  when "Saved Session"
    # check for/load a list of saved sessions
  else 
    puts select_option
    next 
  end
end

$prompt = TTY::Prompt.new
def $new_spec
  spec = $prompt.select("Select a category to start optioning", ["Color", "Wheels", "Wheel Color", "Interior", "Exterior", "Mechanical", "Audio"])
  spec
end
option = ""
while option != "Exit"
  option = $new_spec
  case option
  when "Color"
    # load color options
  end
end