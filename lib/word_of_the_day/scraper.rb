class WordOfTheDay::Scraper

  def self.scrape_words
    @page = Nokogiri::HTML(open("http://www.wordthink.com/"))
    @word_array = @page.css("p").text.split("\n")
    @word_array.shift
    @word_array
  end
  
end
