require 'tty-prompt'
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

class Wheels < Spec
  attr_reader :wheel, :price

  def initialize(wheel, price)
    @wheel = wheel
    @price = price
  end

  def to_s
    $rim = "#{@wheel} wheels for $#{@price}"
  end
end

def wheels
  $prompt.select('No Cost Wheels:'.colorize(:red), ['20 inch Forged Aluminium'],
                 'Premium Wheels:'.colorize(:red), ['20 inch Forged Magnesium'], 'Special Wheels:'.colorize(:red), ['20 inch Carbon Fibre'], 'Exit', per_page: 16)
end

option = ''
while option != 'Exit'
  option = wheels
  case option
  when '20 inch Forged Aluminium'
    puts rim = Wheels.new('20 inch Forged Aluminium', 0)
  when 'Premium Wheels:'
    puts 'Not a valid selection'
  when '20 inch Forged Magnesium'
    puts rim =  Wheels.new('20 inch Forged Magnesium', 28_000)
  when 'Special Wheels:'
    puts 'Not a valid selection'
  when '20 inch Carbon Fibre'
    puts rim =  Wheels.new('20 inch Carbon Fibre', 38_000)
  when 'Exit'
    next
  end
end
