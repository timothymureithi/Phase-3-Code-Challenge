class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category

  end

  def self.all
    @@all 
  end


end
