require "todo_list"

class Todo
    def initialize(task) # task is a string
      @task = task
    end
  
    def task
      # @storage[@task] = "incomplete"
      return @task
    end
  
    def mark_done!
      # @storage[@task] = "complete"
      @task << " - DONE!"
    end
  
    def done?
      if @task.include? " - DONE!"
        return true
      else
        return false
      end
    end
  end

