require 'pry'

class WordOfTheDay::Word

attr_accessor :name, :type

@@all = []

def initialize (name = "test")
  @@all << self
end

def self.create_word_list
  WordOfTheDay::Scraper.scrape_words.each do |word_string|
    word = self.new("test")
  end
end

def self.all
  @@all
end

end
