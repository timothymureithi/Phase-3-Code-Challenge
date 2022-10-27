class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

  #access articles
  def articles 
    Article.all.select do | article |
      article.author == self 
    end
  end

  def magazines 
    self.articles.map do |article|
      article.magazine
    end.uniq
  end


end
