require "todo_challenge"

RSpec.describe Todo do
    it "constructs" do
        todo = Todo.new("Wash clothes")
    end

    it "returns the task as a string" do
        todo = Todo.new("Wash clothes")
        result = todo.task
        expect(result).to eq "Wash clothes"
    end 

    it "marks a task as done" do  
        todo = Todo.new("Wash clothes")
        done = todo.mark_done!
        expect(todo.done?).to eq true
    end

end 