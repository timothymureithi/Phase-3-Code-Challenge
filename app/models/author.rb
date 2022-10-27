class Author
  attr_accessor :name
  attr_accessor :articles


  def initialize(name)
    @name = name
    @articles = []  
  end

  #access articles
  #articles written by author
  def articles 
    Article.all.select do | article |
      article.author == self 
    end
  end

 # def magazines 
  #  self.articles.map do |article|
   #   article.magazine
    #end.uniq
  #end

  def magazines 
    Article.all.select do | article |
      article.author == self
    end.map do | contibutedArticles |
    end.uniq
  end


end
