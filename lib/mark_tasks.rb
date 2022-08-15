class TodoList
    def initialize()
        @list = []
    end

    def add(task)
        @list << task
    end

    def list
        return @list
    end


    def complete(task)
        fail "No such task." unless @list.include? task 
        @list.delete(task) 
    end



    # def remove(task)
    #     @list.delete(task)
    # end
end