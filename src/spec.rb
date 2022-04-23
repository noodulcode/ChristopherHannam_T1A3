# Spec is the Superclass of all options
require 'tty-prompt'

class Spec
  def initialize(color, wheels, wheel_color, interior, audio)
    @color = color
    @wheels = wheels
    @wheel_color = wheel_color
    @interior = interior
    @audio = audio
  end
end

# Prompt
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)

#Methods
# Menu
def new_spec
  $prompt.select('Select a category to start optioning',
                 ['Color', 'Wheels', 'Wheel Color', 'Interior', 'Audio'], 'Exit', per_page: 16)
end
# Menu case
option = ''
while option != 'Exit'
  option = new_spec
  case option
  when 'Color'
    require_relative('./colors')
  when 'Wheels'
    require_relative('./wheels')
  when 'Wheel Color'
    require_relative('./wheelcolors')
  when 'Interior'
    require_relative('./interior')
  when 'Audio'
    require_relative('./audio')
  when 'Exit'
    next
  end
end
