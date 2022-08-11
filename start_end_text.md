{{PROBLEM}} Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

evaluate_first_last_character?(string) (e.g. "Hello my name is Ella!")
returns true or false (boolean)


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

evaluate_first_last_character?("Hello my name is Ella!")
evaluate_first_last_character?("Hello my name is Ella")
evaluate_first_last_character?("hello my name is Ella")
evaluate_first_last_character?("hello My Name Is Ella")
evaluate_first_last_character?("")

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.