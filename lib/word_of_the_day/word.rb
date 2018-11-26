class WordOfTheDay::Word

  attr_accessor :name, :type, :definition

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
