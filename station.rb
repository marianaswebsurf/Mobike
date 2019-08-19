
class Station 
	def initialize
		@capacity = 3
		@users = []
	end

	def bikes 
		@bikes ||= [] 
	end	

	def capacity
		@capacity
	end

	def dock(bike)
		raise "Station is full" if full?
		bikes << bike 
	end 

	def full? 
		puts "Bike left #{bikes.count}"
		bikes.count == capacity
	end 

	def release(bike)
		bikes.delete(bike)
	end

	def users
		@users
	end

	def add_name_to_list(name) 
		users << name
	end

	def delete_name_from_list(name)
		users.delete(name)	
	end


	# def availablity
	#  	bikes < 6 
	# end	


end		