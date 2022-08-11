{{PROBLEM}} Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

method = include_string?(text)

returns true or false



3. Create Examples as Tests
Make a list of examples of what the method will take and return.

include_string?("#TODO") => true
include_string?("#todo") => false
include_string?("#TOD") => false
include_string?("") => false



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.