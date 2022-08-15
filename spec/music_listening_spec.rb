require "music_listening"

RSpec.describe MusicListening do
    it "initialises" do
        music_listening = MusicListening.new
    end

    it "adds a track" do
        music_listening = MusicListening.new
        result1 = music_listening.add("Shake it off") 
        expect(result1).to eq ["Shake it off"]
    end

    it "shows a list of all tracks added" do
        music_listening = MusicListening.new
        add1 = music_listening.add("Shake it off")
        add2 = music_listening.add("Umbrella")  
        result = music_listening.list
        expect(result).to eq ["Shake it off", "Umbrella"]
    end

    it "raises an error if same song is added more than once" do
        music_listening = MusicListening.new
        add1 = music_listening.add("Dancing in the moonlight")
        expect{music_listening.add("Dancing in the moonlight")}.to raise_error "Song already in list"
    end   
end