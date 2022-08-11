require "count_words"

RSpec.describe "count_words method" do
    it "counts number of words in a string" do
        result = count_words("Hello world")
        expect(result).to eq 2
    end 

end