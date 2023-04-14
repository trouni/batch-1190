class Task
  attr_reader :title

  def initialize(title)
    @title = title
    @done = false
  end

  # Creating an explicit reader in order to have the custom name `done?` with the `?`
  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end