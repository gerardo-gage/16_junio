#Herencia

class Vehicle
  @@age = 3

  def what_am_i? 
    "You are a:"
  end

  def number_of_wheels
  	true
  end

  def color
  	true
  end

  def age!
  	true
  end

  def age
  	@a = 2
  end
end

class Motorized < Vehicle
  
  def has_motor
  	true
  end

  def tank_size
  	true
  end
  
  def refuel
    true
  end
end

class Motorbike < Motorized
  @@vehicle = "#{self}"

  def what_am_i?
  	super() << " #{@@vehicle}"
  end
end

class Car < Motorized
  @@vehicle = "#{self}"

  def what_am_i?
  	super() << " #{@@vehicle}"
  end
end

class Bicycle < Vehicle
  @@vehicle = "#{self}"

  def what_am_i?
  	super() << " #{@@vehicle}"
  end

  def initialize(age)
  	@age = age
  end

  def age
    @age
  end

  def number_of_gears
  	@n = 2
  end
end

class Skateboard < Vehicle
  @@vehicle = "#{self}"

  def what_am_i?
  	super() << " #{@@vehicle}"
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end