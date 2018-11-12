require 'pry'

class WordOfTheDay::Scraper
  attr_writer :name

  def self.scrape_words
    #Scrape word, date, and definition
    @page = Nokogiri::HTML(open("http://www.wordthink.com/"))
    @definition_array = @page.css("p").text.split(".")
    @definition_array
  end

  def self.create_word_list
    self.scrape_words.each do |word|
      word_name = @page.css("p").css("b").text
    end
  end

end