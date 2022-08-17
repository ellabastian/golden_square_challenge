require "todo_list_spec"
require "todo_challenge_spec"

RSpec.describe "todo list integration" do
    it "adds instances of todo to a todo list" do
        todo = Todo.new("Wash clothes")
        task = todo.task
        todo_list = TodoList.new
        result = todo_list.add(task)
        expect(result).to eq ["Wash clothes"]
    end

    # it "when no instances of todo are added returns an empty list" do
    #     todo = Todo.new("")
    #     task = todo.task
    #     todo_list = TodoList.new
    #     result = todo_list.add(task)
    #     expect(result).to eq [""]
    # end
    
    it "returns all todos not marked as done" do
        todo_list = TodoList.new
        todo = Todo.new("Clean")
        task = todo.task
        result = todo_list.add(task)
        expect(todo_list.incomplete).to eq ["Clean"]
    end

    it "returns all todos marked as done" do
        todo_list = TodoList.new
        todo_1 = Todo.new("Wash clothes")
        todo_2 = Todo.new("Food shopping")
        task_1 = todo_1.task
        task_2 = todo_2.task
        result_1 = todo_list.add(task_1)
        result_2 = todo_list.add(task_2)
        done_1 = todo_1.mark_done!
        expect(todo_list.complete).to eq ["Wash clothes - DONE!"]
    end

    it "marks all todos as done" do
        todo_list = TodoList.new
        todo_1 = Todo.new("Wash clothes")
        todo_2 = Todo.new("Food shopping")
        task_1 = todo_1.task
        task_2 = todo_2.task
        result_1 = todo_list.add(task_1)
        result_2 = todo_list.add(task_2)
        done_1 = todo_1.mark_done!
        done_2 = todo_2.mark_done!
        expect(todo_list.complete).to eq ["Wash clothes - DONE!", "Food shopping - DONE!"]
    end

end


        
