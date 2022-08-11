require "grammar_stats"

RSpec.describe GrammarStats do
    it "constructs" do
        check_punctuation = GrammarStats.new(0, 0)
    end

    it "checks whether a string begins with a capital letter and ends with punctuation" do
        check_punctuation = GrammarStats.new(0, 0)
        result = check_punctuation.check?("Hello, world!")
        expect(result).to eq true

        result2 = check_punctuation.check?("Hello, world")
        expect(result2).to eq false

        result3 = check_punctuation.check?("hello, world!")
        expect(result3).to eq false

        result4 = check_punctuation.check?("")
        expect(result4).to eq false

        percentage = check_punctuation.percentage_good
        expect(percentage).to eq 25
    end
end
