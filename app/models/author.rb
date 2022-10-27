class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

  def articles 
    Article.filter{|article| article.Author == self}
  end

  def magazines 
    articles = Article.filter{|a| a.Article == self }
    articles.magazines
  end


end
