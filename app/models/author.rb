require_relative './article'
class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  end

  #access articles
  #articles written by author/use filter
  def articles 
    Article.all.filter | article |
      article.author == self 
    end
    end


  def magazines 
  magazines =  self.articles.map do |article|
     article.magazine
    end.uniq
  end

 # def magazines 
  #  Article.all.select do | article |
   ##end.map do | contibutedArticles |
    #end.uniq
 # end

  #Association & Aggregate
  #create article instance associates with particular author
  def add_article(magazine, title)
    Article.new(magazine, title)
  end

  #unique array of strings with the categories of the magazines the author has contributed to
  def topics_areas
    self.magazines.map do | magazine |
      magazine.category
  end.uniq
 end


