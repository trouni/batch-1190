class Building
  attr_reader :width, :length, :name

  def initialize(width, length, name)
    @width = width # integer
    @length = length # integer
    @name = name.capitalize # string
  end

  def surface
    @width * @length
  end
end
