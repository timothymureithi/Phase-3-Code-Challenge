require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
#Author
author_1=Author.new("Thierry Henry")
author_2=Author.new("Steve Wozniak")

#Magazine
sports1=Magazine.new("EPL", "Football")
sport2=Magazine.new("Sevens Series", "Rugby")
tech1=Magazine.new("World of Tech", "Technology")



#Article
article1=Article.new(author_1, sports1, "This is my article")
article2=Article.new(author_2, tech1, "This is my tech article")
article2=Article.new(author_1, sports1, "This is my second article")
article4=Article.new(author_2, tech1, "This is about JS")
article5=Article.new(author_1, sport2, "This is about racing")
article6=Article.new(author_2, tech1, "This is about ruby")
article7=Article.new(author_2, tech1, "This is about JS")
article8=Article.new(author_2, tech1, "This is about Python")


### DO NOT REMOVE THIS
binding.pry

0
