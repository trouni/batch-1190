require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list_tasks
    display_all_tasks
  end

  def add_task
    # 1. Tell the view to ask the user for the title of the task
    title = @view.ask_for_title
    # 2. Create the task
    task = Task.new(title)
    # 3. Add the task to the repository
    @repository.add(task)
  end

  def mark_task_as_done
    # 1. Show the list of tasks
    display_all_tasks
    # 2. Tell the view to ask the user the index of the task to mark as done
    index = @view.ask_for_index
    # 3. Get the task from the repository
    task = @repository.find(index)
    # 4. Mark the task as done
    task.mark_as_done!
  end

  private

  def display_all_tasks
    # 1. Get the tasks from the repository
    tasks = @repository.all
    # 2. Display the tasks
    # To call the `#display` method from the view, we just need an instance of View
    # So we create one in the `initialize`
    @view.display(tasks)
  end
end
