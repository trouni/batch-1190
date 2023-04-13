require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

simba = Lion.new('Simba')
nala = Lion.new('Nala')
bingbong = Lion.new('Bing Bong')
peanut = Meerkat.new('Peanut')
ruby = Warthog.new('Ruby')

animals = [simba, nala, bingbong, peanut, ruby]
# animals is an array that contains instance of different classes

# Polymorphism / Duck typing
animals.each do |animal|
  puts animal.talk
end
