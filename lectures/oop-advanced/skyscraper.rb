class Skyscraper < Building
  attr_reader :floors

  def initialize(width, length, name, floors)
    super(width, length, name)
    @floors = floors
  end
end
