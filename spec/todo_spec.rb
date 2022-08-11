require "todo"

RSpec.describe "#todo" do
    it "checks if text includes the string '#TODO' " do
        result = include_string?("#TODO")
        expect(result).to eq true
    end
    
    it "checks if text includes the string '#TODO' " do
        result = include_string?("")
        expect(result).to eq false
    end 

    it "checks if text includes the string '#TODO' " do
        result = include_string?("#todo")
        expect(result).to eq false
    end 


end
