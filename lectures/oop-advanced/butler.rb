class Butler
  attr_reader :name, :castle

  def initialize(name, castle, age = nil, ssn = nil)
    @name = name # string
    @castle = castle # instance of Castle
  end

  def lock_the_batcave!
    # TODO
  end
end