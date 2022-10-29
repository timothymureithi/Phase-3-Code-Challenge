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

    def articles 
      Article.all.filter{|article| article.author == @name}
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
    def article_titles
    self.articles.map { | article | article.title}
    end
    

    #contributing authors
    def contributing_authors 
      self.contributors.filter { |author| author.articles.count > 2}
      end
    end
    
