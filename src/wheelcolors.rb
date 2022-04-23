require 'tty-prompt'
# Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Wheel colors - Subclass of Wheels
# No cost - Silver, White
# Extra Cost $1000 - Black, Satin Black, Satin Copper, Satin Deep Blue
# High cost $2000 - Satin Black with Yellow rim borders (not on carbon fibre)

require_relative('./wheels')
class WheelColors < Wheels
  attr_reader :color, :price

  def initialize(color, price)
    @color = color
    @price = price
  end
# Methods
# List options and price
  def to_s
    $rim_col = "Wheels painted in #{@color} for $#{@price}"
  end
end
# Menu
def wheel_colors
  $prompt.select('No Cost Colors:'.colorize(:red), %w[Silver White], 'Premium Colors:'.colorize(:red),
                 ['Black', 'Satin Black', 'Satin Copper', 'Satin Deep Blue'], 'Special Color:'.colorize(:red), ['Satin Black with Yellow rim borders (not available on carbon fibre wheels)'], 'Exit', per_page: 16)
end
# Menu Case
option = ''
while option != 'Exit'
  option = wheel_colors
  case option
  when 'Silver'
    puts rim_col = WheelColors.new('Silver', 0)
  when 'Silver'
    puts rim_col = WheelColors.new('White', 0)
  when 'Premium Colors:'
    puts 'Not a valid selection'
  when 'Black'
    puts rim_col =  WheelColors.new('Black', 1000)
  when 'Satin Black'
    puts rim_col =  WheelColors.new('Satin Black', 1000)
  when 'Satin Copper'
    puts rim_col =  WheelColors.new('Satin Copper', 1000)
  when 'Satin Deep Blue'
    puts rim_col =  WheelColors.new('Satin Deep Blue', 1000)
  when 'Special Color:'
    puts 'Not a valid selection'
  when 'Satin Black with Yellow rim borders (not available on carbon fibre wheels)' && @wheel != '20 inch Carbon Fibre'
    puts rim_col =  WheelColors.new('Satin Black with Yellow rim borders', 2000)
  when 'Exit'
    next
  else
    puts 'That wheel/color combination is incompatible'
  end
end
