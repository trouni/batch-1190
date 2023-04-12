class Car
    attr_accessor :color # is the same as having attr_reader :color + attr_writer :color
    # # attribute readers
    # attr_reader :color#, :brand
    # # # attr_reader creates the method below:
    # # def color
    # #     @color
    # # end

    # # attribute writers
    # attr_writer :color
    # # def color=(new_color)
    # #     @color = new_color
    # # end

    # NUMBER_OF_WHEELS = 4 # this is a constant value, shared by all instances of cars

    # constructor
    def initialize(color)
        # # this will run everytime we call Car.new
        # puts "Creating a car..."

        # DATA/STATE
        # example of attributes:
        # color, brand, type of wheels, number of doors, engine, has_ac, make, ac_is_on

        # instance variables (stored inside the instance)
        @engine_started = false # boolean
        @color = color # string

        # Encapsulation
        # By default, all the instance variables are hidden to the outside
    end

    # BEHAVIOUR
    # example of behaviours:
    # change gear, open/close windows, start engine, honk the horn, accelerate, break

    # instance methods
    def start_engine
        inject_fuel
        spark_plugs
        crank_engine

        @engine_started = true
    end

    # explicit/custom reader (I can customize the name, e.g. add a ? at the end of the name)
    def engine_started?
        @engine_started
    end

    def colour
        @color
    end

    # def paint(new_color)
    #     @color = new_color
    # end
    # # ameesha_car.paint('black')

    private

    def inject_fuel
        puts "Injecting fuel..."
    end

    def spark_plugs
        puts "Sparking plugs..."
    end

    def crank_engine
        puts "Cranking engine..."
    end
end


# print "What color do you want for Ameesha's car? > "
# color = gets.chomp
# ameesha_car = Car.new(color)


# puts "Ameesha's car is #{ameesha_car.color}"

# print "What color would you like to paint Ameesha's car? > "
# new_color = gets.chomp

# ameesha_car.color = new_color

# puts "Ameesha's car is #{ameesha_car.color}"

# puts '---'

# puts "Ameesha's car is currently #{ameesha_car.engine_started? ? 'on' : 'off'}."

# puts "Turning on the car..."
# ameesha_car.start_engine

# puts "Ameesha's car is currently #{ameesha_car.engine_started? ? 'on' : 'off'}."


