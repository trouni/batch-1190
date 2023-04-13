# Inheritance

class ChildClass < ParentClass
end

class SubClass < SuperClass
end


# Class methods

Date.today
Time.now
JSON.parse
CSV.for_each

# Instance vs Class methods

car = Car.new
car.start_engine # an instance method needs an instnace to be called

Car.available_colors # you could call this method without any car instance
Restaurant.filter_by_city(restaurants, city)
