require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, help_color: :yellow)
# Audio - 
#             No cost - Deletion of all audio gear (reduces weight)
#             Extra cost $4000 - 8 Speaker Surround Sound System with GPS and Touchscreen


# Class Mechanical
# def initialize(no_cost, extra_cost, high_cost)
#     @no_cost = no cost
#     @extra_cost = extra cost
#     @high_cost = high cost
# end
# end

class Audio < Spec
    def initialize(audio, price)
        @audio = audio
        @price = price
    end

    def to_s
        return $stereo = "#{@audio} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end

def audio
    start = $prompt.select("No Cost Options:".colorize(:red), ["Deletion of all audio gear (reduces weight)", "8 Speaker Surround Sound System with GPS and Touchscreen"], "Exit")
    start
  end

  option = ""
  while option != "Exit"
    option = audio
    case option
    when "Deletion of all audio gear (reduces weight)"
        puts stereo = Audio.new("No Audio System", 0)
    when "8 Speaker Surround Sound System with GPS and Touchscreen"
        puts stereo = Audio.new("8 Speaker Surround Sound System with GPS and Touchscreen", 4000)
    when "Exit"
        next 
    end
  end





# audio_spec = Audio.new("8 Speaker Surround Sound System with GPS and Touchscreen", "4000")
# puts audio_spec