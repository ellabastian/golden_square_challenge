require_relative "todo_challenge"

class TodoList
    def initialize
      @list = []
    end
  
    def add(todo) # todo is an instance of Todo
      @list << todo
      @list
    end
  
    def incomplete
      return @list.reject {|task| task.include? " - DONE!"}
    end
  
    def complete
      return @list.filter {|task| task.include? " - DONE!"}
    end
  
    def give_up!
      @list.select {|task| task.mark_done!}
    end
  end
 