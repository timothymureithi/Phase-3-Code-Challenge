class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end


  #articles written by author/use filter
  def articles 
    Article.all.filter {|article| article.author == @name}
    end

    #Returns a unique array of Magazine instances for which the author has contributed to
  def magazines 
  articles.map { |article| article.magazine }.uniq
  end

  #Association & Aggregate
  #create article instance associates with particular author
  def add_article(magazine, title)
    Article.new(magazine, self, title)
  end

  #unique array of strings with the categories of the magazines the author has contributed to
  def topics_areas
    magazines.map { |magazine| magazine.category }.uniq
 end

end



