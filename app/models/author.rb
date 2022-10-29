class Author
  #name cannot be changed
  attr_reader :name
 #@@all = []

  def initialize(name)
    @name = name
  # @@all << self 
  end

# def self.all
#  @@all
#   end

  #articles written by author/use filter
  def articles 
    Article.all.filter {|article| article.author == @name}
    end


  def magazines 
  articles.map { |article| article.magazine }.uniq
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
    magazines.map { |magazine| magazine.category }.uniq
 end

end



