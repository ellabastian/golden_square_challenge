{{PROBLEM}} Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

>As a user
>So that I can keep track of my tasks
>I want a program that I can add todo tasks to and see a list of them.

>As a user
>So that I can focus on tasks to complete
>I want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.


class TodoList
    def initialize(list = [])
    #@list = list 
    end

    def add_task(text) #text is a string representing a task
    #returns nothing
    end

    def list_tasks
    #returns a list of strings representing tasks
    end

    def remove_task(text) #text is a string from the list of tasks representing a task
    #returns nothing
    end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todo_list = TodoList.new()
todo_list.add_task("Brush teeth")
todo_list.list_tasks => ["Brush teeth"]

# 2
todo_list = TodoList.new()
todo_list.add_task("")
todo_list.list_tasks => [""]


# 3
todo_list = TodoList.new()
todo_list.add_task("Brush teeth")
todo_list.add_task("Walk dog")
todo_list.list_tasks => ["Brush teeth", "Walk dog"]
todo_list.remove_task("Walk dog") => ["Brush teeth"]

# 4




4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.