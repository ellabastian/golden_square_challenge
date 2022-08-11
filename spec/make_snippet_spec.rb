require "make_snippet"

# RSpec.describe(string) do
# it "what it does" do
# result = method(param)
# expect(result).to eq answer

RSpec.describe "make_snippet method" do
    it "returns summary of string" do
        result = make_snippet("The quick brown fox jumped over the fence")
        expect(result).to eq "The quick brown fox jumped ..."
    end 
end