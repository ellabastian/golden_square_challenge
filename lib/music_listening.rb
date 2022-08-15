class MusicListening
    def initialize
        @list = []
    end

    def add(track)
        # fail "Song already in list" unless @list.include? track 
        # @list << track
        if @list.include? track
            fail "Song already in list"
        else
            @list << track
        end
    end

    def list
        return @list
    end
end