require "start_end_text"

RSpec.describe "#grammar_checker?" do
    it "returns true if a sentence starts with a capital letter and ends with some kind of punctuation." do
        result1 = grammar_checker?("Hello, my name is Ella!")
        expect(result1).to eq true  

        result2 = grammar_checker?("Hello, my name is Ella")
        expect(result2).to eq false
        
        result3 = grammar_checker?("hello, my name is Ella!")
        expect(result3).to eq false 

        result4 = grammar_checker?("hello, my name is Ella")
        expect(result4).to eq false

        result5 = grammar_checker?("")
        expect(result5).to eq false
    end  
end