class SlotMachine
  ITEMS = %w[🤩 ⭐️ 🛎 7️⃣ 🍒].reverse
  
  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      shuffle
      print @reels.join("\t") + "\r"
      # \r is the 'return carriage' character to return to the beginning of the line
      $stdout.flush # clears the line in the terminal
      sleep(0.03)
    end
    sleep(0.5)
    shuffle
  end

  def score
    if three_of_the_same?
      repeated_item = @reels[0] # all items are the same, we can take any
      value_of(repeated_item) * 10
    elsif two_of_the_same_plus_joker?
      # Find the duplicated symbol by sorting and taking the middle item
      # ["⭐️", "🛎", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "⭐️", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "🛎", "⭐️"].sort => ["⭐️", "🛎", "🛎"]
      repeated_item = @reels.sort[1]
      value_of(repeated_item) * 5
    else
      0
    end
  end

  private

  def shuffle
    @reels = @reels.map { ITEMS.sample }
  end

  def three_of_the_same?
    # We check how many different items are left after removing the duplicates
    @reels.uniq.size == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.size == 2 && @reels.include?('🤩')
  end

  def value_of(item)
    ITEMS.index(item) + 1
  end
end