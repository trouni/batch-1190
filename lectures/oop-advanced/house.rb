require_relative 'building'

class House < Building
  # Inherits all the attributes and behaviour of Building
  def initialize(width, length, name)
    super # same as super(width, length, name)
    super() # to not pass any args
  end
end
