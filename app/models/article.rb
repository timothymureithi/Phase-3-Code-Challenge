
class Article

    @@all = []
    attr_accessor :author, :magazine, :title 

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
 
    end

    def self.all
        @@all

end
end
