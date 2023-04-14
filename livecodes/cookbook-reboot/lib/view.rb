class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}) #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(thing)
    puts "What is your recipe #{thing}?"
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe number?"
    gets.chomp.to_i - 1
  end
end