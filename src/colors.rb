require 'tty-prompt'
# Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

# Colors -
# No cost - White, Black, Red, Yellow
# Extra cost $6000 - White Metallic, GT Silver, Metallic Navy, Chalk Grey, Miami Blue
# High cost $18000 - Custom Color

class Colors < Spec
  attr_reader :color, :price

  def initialize(color, price)
    @color = color
    @price = price
  end
end
# Methods
# List options and price
def to_s
  $paint = "#{@color} paint for $#{@price}"
end
# Menu
def color
  $prompt.select('No Cost Colors:'.colorize(:red), %w[White Black Red Yellow],
                 'Premium Colors:'.colorize(:red), ['White Metallic', 'GT Silver', 'Metallic Navy', 'Chalk Gray', 'Miami Blue'], 'Custom Color', 'Exit', per_page: 16)
end
# Menu case
option = ''
while option != 'Exit'
  option = color
  case option
  when 'White'
    puts paint = Colors.new('White', 0)
  when 'Black'
    puts paint = Colors.new('Black', 0)
  when 'Red'
    puts paint = Colors.new('Red', 0)
  when 'Yellow'
    puts paint = Colors.new('Yellow', 0)
  when 'Premium Colors:'
    puts 'Not a valid selection'
  when 'White Metallic'
    puts paint = Colors.new('White Metallic', 6000)
  when 'GT Silver'
    puts paint = Colors.new('GT Silver', 6000)
  when 'Metallic Navy'
    puts paint = Colors.new('Metallic Navy', 6000)
  when 'Chalk Gray'
    puts paint = Colors.new('Chalk Gray', 6000)
  when 'Miami Blue'
    puts paint = Colors.new('Miami Blue', 6000)
  when 'Custom Color'
    puts paint = Colors.new('Custom Color', 18_000)
  when 'Exit'
    next
  end
end
