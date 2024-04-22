class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def delete_task(index)
    if index >= 0 && index < @tasks.length
      @tasks.delete_at(index)
    else
      puts "Invalid index."
    end
  end

  def display_tasks
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

# Example usage:
todo_list = TodoList.new

todo_list.add_task("Buy groceries")
todo_list.add_task("Pay bills")
todo_list.display_tasks

puts "\nAdding a new task..."
todo_list.add_task("Call mom")
todo_list.display_tasks

puts "\nDeleting a task..."
todo_list.delete_task(1)
todo_list.display_tasks
