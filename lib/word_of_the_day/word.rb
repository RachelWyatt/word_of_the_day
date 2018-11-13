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
    entry.name = word.split.first
    entry.type = "I'm a noun!"
    entry.definition = "test"
    @@all << entry
  end
  @@all
end

def self.all
  @@all
end

end
