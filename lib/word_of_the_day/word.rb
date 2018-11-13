require 'pry'

class WordOfTheDay::Word

attr_accessor :name, :type, :definition

@@all = []

def initialize (name = "test")
  @@all << self
end

def self.create_word_list
  WordOfTheDay::Scraper.scrape_words.each do |word|
    entry = self.new
    split_word = word.split("  adj. " || "  n. ")
    entry.name = word.split.first
    entry.definition = split_word[-1]
  end
  @@all
end

def self.all
  @@all
end

  

end
