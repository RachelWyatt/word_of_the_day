class WordOfTheDay::Scraper

  def self.scrape_words
    page = Nokogiri::HTML(open("http://www.wordthink.com/"))
    word_array = page.css("p").text.split("\n")
    word_array.shift
    word_array.each do |word|
        entry = WordOfTheDay::Word.new
        split_word = word.split
        entry.name = word.match(/[A-Z].*\b\s{2}/)
        entry.definition = word.match(/\s[A-Z].+\z/)
        entry.type = word.match(/\s{2}[a-z].{0,3}[.]\s/)
      end
  end
end
