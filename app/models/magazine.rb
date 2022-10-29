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
    #return array of Author instances who have written for this magazine/ use filter
    def contributors
      Article.all.filter { | article | article.magazine.name==@name}.map { |article|article.author.name}.uniq
        end


    #find by name
    def self.find_by_name (name)
      Magazine.all.find  {|magazine| magazine.name == name} 
  end

  
    #title of article
    def article_titles
    self.articles.map { | article | article.title}
    end
    

    #contributing authors
    def contributing_authors 
      self.contributors.filter do |author|
        author.articles.count > 2
      end
    end
    
#private 
private
    def contributed_articles
      Article.all.filter do |article|
        article.magazine == self
      end
      end
end
  
