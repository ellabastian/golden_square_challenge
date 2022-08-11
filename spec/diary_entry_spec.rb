require "diary_entry"

RSpec.describe DiaryEntry do
    it "allows user to find out information about diary entries" do
        entry = DiaryEntry.new("example title", "one two three")
        result1 = entry.title
        expect(result1).to eq "example title"

        result2 = entry.contents
        expect(result2).to eq "one two three"

        result3 = entry.count_words
        expect(result3).to eq 3

        result4 = entry.reading_time(2)
        expect(result4).to eq 2

        # result5 = entry.reading_chunk(2, 1)
        # expect(result5).to eq "three"
    end
end