class WordOfTheDay::Word

  attr_accessor :name, :type, :definition

  @@all = []

  def initialize
    @@all << self
  end

  def self.create_word_list	
    WordOfTheDay::Scraper.scrape_words.each do |word|	
      entry = self.new	
      split_word = word.split	
      entry.name = word.match(/[A-Z].*\b\s{2}/)	
      entry.definition = word.match(/\s[A-Z].+\z/)	
      entry.type = word.match(/\s{2}[a-z].{0,3}[.]\s/)	
    end	
    all	
  end

  def self.all
    @@all
  end

end
