
class Song

    attr_reader :name
    attr_reader :duration


    def initialize(name,duration)
        @name=name
        @duration=duration
    end

end


class Playlist

    def initialize
        @songs=[]
        @i=-1
    end

    def add(song)
        @i+=1
        @songs[@i]=song
        p "Song added sucessfully!!!"

        @songs
    end

    def remove(song)
        i=0
        while(i<=@i)
            if(@songs[i]==song)
                @songs[i]=nil
            
                break
            end
            i+=1
            
        end
    end

    def total_duration
        i=0
        total=0
        while(i<=@i)
            if @songs[i] != nil
                total+=@songs[i].duration
            end

            i+=1
        end
        total
    end


end


song1=Song.new("Perfect",5)

song2=Song.new("Beliver",4)


playlist=Playlist.new

playlist.add(song1)

p playlist.add(song2)

p playlist.remove(song2)

song3=Song.new("Vaathi coming",3)

p playlist.add(song3)


