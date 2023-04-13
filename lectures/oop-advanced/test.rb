require_relative 'house'
require_relative 'skyscraper'
require_relative 'castle'

house = House.new(30, 42, 'Frank')

puts "The surface of the house is: #{house.surface}m2"
puts "The name of the house is: #{house.name}"

skyscraper = Skyscraper.new(60, 23, 'Empire State Building', 24)
puts "The surface of the skyscraper is: #{skyscraper.surface}m2"
puts "The name of the skyscraper is: #{skyscraper.name}"
puts "The skyscraper has #{skyscraper.floors} floors"

castle = Castle.new(100, 10, 'Versailles', 'Gui')
puts "The surface of the castle is: #{castle.surface}m2"
puts "The name of the castle is: #{castle.name}"
puts "The castle #{castle.has_a_butler? ? 'has' : 'does not have'} a butler"
