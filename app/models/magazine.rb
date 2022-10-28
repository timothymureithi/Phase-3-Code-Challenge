require_relative './article'
class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
    end

    #contributors
    #return array of Author instances who have written for this magazine
    def contributors
      contributed_articles.map do | my_articles |
        my_articles.author
        end
        end


    #find by name
    #def self.find_by_name()
    

    #title of article
    contributed_articles.map do | my_articles |
      my_articles.title
    end
    end


    #contributing authors

    #articles for magazines

end
