class WordOfTheDay::CLI

  def call
    greeting
    list_words
    menu
    goodbye
  end

  def greeting
  puts "Welcome to Word Of The Day!"
  end

  def list_words
    @words = WordOfTheDay::Scraper.scrape_words
    @words.each.with_index(1) do |word, i|
      puts "#{i}. #{word}"
    end
  end

 def menu
    input = nil
    while input != "exit"
      puts "Type the corresponding number to learn a word's definition, list to see the lsit of words and exit to exit the CLI."
      input = gets.strip

      if input.to_i > 0
        puts @words[input.to_i-1].definition
      elsif input == 'list'
        list_words
      else puts "Not sure what you meant, please type the number of the word you want to learn more about, list words, or exit."
      end
    end
  end



  def goodbye
    puts "Come back tomorrow to learn a new word!"
  end

end
