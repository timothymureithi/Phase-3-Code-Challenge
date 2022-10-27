class Article

    @@all = []
    attr_reader :author, :magazine, :title 

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @all << self
      
    end

    def magazine
        @magazine
    end

    def author
        @author
    end

    def title
        @title
    end

end
