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
    def self.find_by_name mag_name
      Magazine.all.find {|magazine| magazine.name == mag_name}
  end
    

    #title of article
    def article_titles
    contributed_articles.map do | my_articles |
      my_articles.title
    end
    end


    #contributing authors
    def contributing_authors 
      self.contributors.filter do |author|
        author.articles.count > 2
      end
    end
    

    #articles for magazines

  end
