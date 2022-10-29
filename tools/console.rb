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
sport2=Magazine.new("GP", "Racing")
tech1=Magazine.new("World of Tech", "Technology")



#Article
article1=Article.new(author_1, sports1, "This is my article")
article2=Article.new(author_2, tech1, "This is my tech article")


### DO NOT REMOVE THIS
binding.pry

0
