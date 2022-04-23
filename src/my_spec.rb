require 'tty-prompt'
# Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Colors -
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Miami Blue
# High cost $18000 - Custom Color

class MySpec < Spec
  attr_reader :option, :price

  def initialize(option, price)
    @option = option
    @price = price
  end
end
# Methods
# Menu
def user_options
  $prompt.select('My Spec:', ['Show My Spec', 'Spec Cost', 'Remove Option', 'Reset My Spec', 'Exit'])
end
# attempting to add up full spec price
def spec_cost
  spec_cost = 0
  # spec_cost = $my_spec.map {|spec| puts @price}.sum
end
# deleting an option
def delete_option
  start = $prompt.select('Choose an option to delete:'.colorize(:red), [$my_spec], 'Exit')
  start
  puts $prompt.yes?('Are you sure you want to remove selected option?'.colorize(:red))
  confirm = gets.chomp
  if confirm == 'y'
    delete_option.delete(option) # does not work
  else
    puts 'User Cancelled'
  end
end
# Menu case
option = ''
while option != 'Exit'
  option = user_options
  case option
  when 'Show My Spec'
    puts $my_spec = [$paint, $rim, $rim_col, $seats, $stereo]
    spec_cost
  when 'Spec Cost'
    puts spec_cost
  when 'Remove Option'
    puts $my_spec = [$paint, $rim, $rim_col, $seats, $stereo]
    puts delete_option
  when 'Reset My Spec'
    # require_relative("./spec.rb") neither work
    # $my_spec = []
  when 'Exit'
    next
  end
end
