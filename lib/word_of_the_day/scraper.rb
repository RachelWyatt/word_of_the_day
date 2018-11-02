require 'pry'

class WordOfTheDay::Scraper
  
  def self.scrape_words
    #Scrape word, date, and definition
    page = Nokogiri::HTML(open("http://www.wordthink.com/"))
   
  end
  

  
end