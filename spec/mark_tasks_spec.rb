require "mark_tasks"

RSpec.describe TodoList1 do
    it "constructs" do
        todo = TodoList1.new()
        # expect(todo).to eq [] 
    end

    it "adds tasks to a list" do
        todo = TodoList1.new()
        result1 = todo.add("Brush teeth")
        expect(result1).to eq ["Brush teeth"]

        todo = TodoList1.new()
        result2 = todo.add("")
        expect(result2).to eq [""]
    end

    it "lists current tasks" do
        todo = TodoList1.new()
        expect(todo.list).to eq []

        todo = TodoList1.new()
        add1 = todo.add("Pick children up from school")
        add2 = todo.add("Walk dog")
        result1 = todo.list
        expect(result1).to eq ["Pick children up from school", "Walk dog"]
    end

    it "removes completed tasks" do
        todo = TodoList1.new()
        add1 = todo.add("Pick children up from school")
        add2 = todo.add("Walk dog")
        result1 = todo.complete("Walk dog")
        expect(todo.list).to eq ["Pick children up from school"]
    end

    it "raises an error if we try to complete a non existent task" do
        todo = TodoList1.new()
        add1 = todo.add("Pick children up from school")
        expect{todo.complete("Get on plane")}.to raise_error "No such task."
    end

end