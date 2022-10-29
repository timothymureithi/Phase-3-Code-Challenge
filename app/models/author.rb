require_relative './article'
class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  #articles written by author/use filter
  def articles 
    Article.all.filter{|article| article.author == self}
    end


  def magazines 
  magazines articles.map { |article| article.magazine}.uniq
  end

 # def magazines 
  #  Article.all.select do | article |
   ##end.map do | contibutedArticles |
    #end.uniq
 # end

  #Association & Aggregate
  #create article instance associates with particular author
  def add_article(magazine, title)
    Article.new(magazine, self, title)
  end

  #unique array of strings with the categories of the magazines the author has contributed to
  def topics_areas
    magazines.collect { | magazine | magazine.category}.uniq
 end


end

author_1=Author.new("Thierry Henry")
article1 = Article.new("Thierry Henry", "Football", "EPL delay")
puts author_1.articles


