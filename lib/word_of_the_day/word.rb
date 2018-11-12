class WordOfTheDay::Word

attr_accessor :name, :type

@@all = []

def initialize (name = nil)
  @name = name
  @@all << self
end

def self.create_word_list
  WordOfTheDay::Scraper.scrape_words.each do |page|
    self.new
  end
end

end


