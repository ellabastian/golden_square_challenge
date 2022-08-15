{{PROBLEM}} Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

>As a user
>So that I can keep track of my music listening
>I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class MusicListening
    def initialize
        list = []
        end
    
    def add(track) #pass in string
    #return nothing
        end
    
    def list #pass nothing in
    #return a list of tracks
    end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
music_listening = MusicListening.new
music_listening.add("Shake it off") 
music_listening.list => ["Shake it off"]


# 2
music_listening = MusicListening.new
music_listening.add("Shake it off")
music_listening.add("Shake it off") => fails with "Song already addes"


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.