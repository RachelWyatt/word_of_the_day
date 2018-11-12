require 'pry'

class WordOfTheDay::Word

attr_accessor :name, :type

@@all = []

def initialize (name = "test")
  @@all << self
end

def self.create_word_list
  WordOfTheDay::Scraper.scrape_words.each do |entry|
    entry = self.new
    entry.name = "Test"
    @@all << entry
  end
  @@all
end

def self.all
  @@all
end

end
