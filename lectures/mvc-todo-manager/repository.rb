class Repository
  def initialize
    @tasks = [] # an array of instances of Task
  end

  # We use a explicit reader to use the custom name `all` (consistent with Rails)
  def all
    @tasks
  end

  def add(task)
    @tasks << task # instance of Task
  end

  def find(index)
    @tasks[index]
  end
end