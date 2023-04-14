class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "-----------------------------"
    puts "Welcome to the MVC Manager 🥳"
    puts "-----------------------------"
    puts
    loop do
      puts "What would you like to do?"
      puts "1. List your tasks"
      puts "2. Add a task"
      puts "3. Mark a task as done"
      puts "0. Exit"
      puts
      print "Your choice: "
      choice = gets.chomp.to_i

      case choice
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_task_as_done
      when 0 then break
      else
        puts "Invalid choice. Please select a number between 0 and 3."
      end
    end

    puts
    puts "----------------------------------------------"
    puts "Thanks for having used the MVC Todo Manager 🥳"
    puts "----------------------------------------------"
  end
end