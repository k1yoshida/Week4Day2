# Story: As a programmer, I can make a vehicle
# Story: As a programmer, I can make a car.
# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Story: As a programmer, I can make a Tesla car.
# Story: As a programmer, I can make a Tata car.
# Story: As a programmer, I can make a Toyota car.
# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

class Vehicle
  attr_accessor :model_year, :lights
  def initialize(lights=false)
    @lights = lights
  end
  def toggle_lights
    @lights = !(@lights)
  end
end

my_vehicle = Vehicle.new

class Car < Vehicle
  def initialize(wheels=4, turn_signal="off", speed=0)
    super()
    @num_wheels = wheels
    @turn_signal = turn_signal
    @speed = speed
  end

  def turn_signal(dir)
    @turn_signal = dir
    if @turn_signal == "right" || @turn_signal == "left"
      p "I want to turn #{@turn_signal}"
    else
      p "Turn signal is off"
    end
  end

  def numWheels
    p "the car has #{@num_wheels} wheels"
  end

  def speed(x)
    @speed = x
    p "You're going #{@speed} km/h"
  end
end

my_car = Car.new

# my_car.turn_signal("left")

# p my_car.lights


# my_car.numWheels
# my_car.model_year = 2007


# p my_car.toggle_lights
# p my_car.toggle_lights
# p my_car.toggle_lights

class Tesla < Car
  def accelerate
    @speed += 10
  end
  def decelerate
    @speed = @speed - 7
  end
end
my_tesla = Tesla.new
my_tesla.speed(30)
p my_tesla.accelerate
p my_tesla.decelerate


class Tata < Car
end

class Toyota < Car
end

# my_tesla.model_year(1999)
