require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'


# Prompt scripts
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)
bar = TTY::ProgressBar.new('Loading Configurator [:bar]', total: 30)

#Methods
# About the car
def about
  puts 'The Pocer Primacara 4SRGT is purpose built track tool. A highly agile mid-engine track and road car with a 4.0-litre flat six-cylinder naturally aspirated engine with a 9000 RPM limit and 368kW of power.'
end
# Show Price
def show_price
  puts 'The Pocer Primacara 4SRGT has a starting price of $310,000 plus extras.'
end
# Menu
def select_option
  $prompt.select('Welcome to the Pocer Primacara 4SRGT configurator. Please select from the options below',
                 ['About the 4SRGT', 'Base Price', 'Spec a new 4SRGT', 'My Spec', 'Exit Configurator'])
end
# Menu case
option = ''
while option != 'Exit'
  option = select_option
  case option
  when 'About the 4SRGT'
    about
  when 'Base Price'
    show_price
  when 'Spec a new 4SRGT'
    30.times do
      sleep(0.1)
      bar.advance
    end
    require_relative('./spec')
  when 'My Spec'
    require_relative('./my_spec')
  when 'Exit Configurator'
    exit
  end
end
