

class User 
	def initialize(name)
		@bike = nil
		@name = name 
	end 

	def name
		@name
	end

	# def booking(station,bike)

		
	# end


	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station, bike, name)
		raise "Suda Pinjam" if station.users.include?(name) 
		station.add_name_to_list(name)
		@bike = station.release(bike) 
	end
	
	def return_bike_to(station, bike)
		station.dock(bike)
		@bike = nil 
		
	end
end 

