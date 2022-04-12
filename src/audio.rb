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

class Audio
    def initialize(audio, price)
        @audio = audio
        @price = price
    end

    def to_s
        return "#{@audio} for $#{@price}"
    end


    # def paint(color)
    #     @color << color
    # end
    # def cost(price)
    #     @price << price
    # end
end


spec = Audio.new("8 Speaker Surround Sound System with GPS and Touchscreen", "4000")
puts spec