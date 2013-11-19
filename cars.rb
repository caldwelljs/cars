class Car
@@total_car_count = 0
@@cars_per_color = {}
attr_accessor :color

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color)
		@color = color
		@fuel = 10
		@distance = 0
		@@total_car_count += 1	
		
		if @@cars_per_color[color] == nil
			@@cars_per_color[color] = 1
		else
			@@cars_per_color[color] += 1
		end
		@@convertible = true
	end


	def self.most_popular_color
		@@cars_per_color.sort_by {|key, value| value }
		@@cars_per_color.keys[0]
	end


	def self.total_car_count
       @@total_car_count
  	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end

end

class Convertible
	@roof_status = "down"

def top_down

car_a = Car.new("black")
car_b = Car.new("blue")
car_c = Car.new("blue")
car_d = Car.new("blue")
car_e = Car.new("red")


best_color = Car.most_popular_color
Car.new(best_color)
puts best_color




# Car.cars_per_color["black"]


# car_a.drive(10)
# puts car_a
# puts car_b
# car_a.drive(232)
# car_b.drive(117)
# puts car_a
# puts car_b



# puts Car.total_car_count
# c1 = Car.new
# puts Car.total_car_count
# c2 = Car.new
# puts Car.total_car_count




