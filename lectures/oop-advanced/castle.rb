require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_reader :butler

  # Class method
  def self.castle_types
    %w[medieval renaissance gothic]
  end

  def initialize(width, length, name, butler_name = nil)
    super(width, length, name) # initialize(width, length, name)

    # create an instance of Butler
    @butler = Butler.new(butler_name, self) if butler_name
  end

  def surface
    super * 0.9 # 10% of the original surface is a moat, we need to remove it
    # calling super calls the method of the same name (#surface) in the SuperClass (Building)
  end

  def has_a_butler?
    !@butler.nil?
  end
end