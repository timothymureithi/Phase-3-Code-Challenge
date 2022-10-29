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

    def articles 
      Article.all.filter{|article| article.magazine.name == @name}
      end


    #contributors
    #return array of Author instances who have written for this magazine/ use filter
    def contributors
     self.articles.map { |article|article.author}.uniq
        end


    #find by name
    #Given a string of magazine's name, this method returns the first magazine object that matches
    def self.find_by_name (name)
      self.all.find  {|magazine| magazine.name == name} 
  end

  
    #title of article
    #Returns an array strings of the titles of all articles written for that magazine
    def article_titles
    self.articles.map { | article | article.title}
    end
    

    #contributing authors
    #Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors 
      self.contributors.filter { |author| author.articles.count > 2}
      end
    end
    
