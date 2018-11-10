class WordOfTheDay::CLI

  def call
    greeting
    list_deals
    menu
    goodbye
  end

  def greeting
  puts "Welcome to Word Of The Day!"
  end

  def list_deals
    @words = WordOfTheDay::Word.word_list
    @words
  end

 def menu
    input = nil
    while input != "exit"
      puts "Type the corresponding number to learn a word's definition, and exit to exit the CLI."
      input = gets.strip

      if input.to_i == 1
        puts "Definition for Word 1"
      elsif input.to_i == 2
        puts "Definition for Word 2"
      else puts "Not sure what you meant, please type the number of the word you want to learn more about, list words, or exit."
      end
    end
  end



  def goodbye
    puts "Come back tomorrow to learn a new word!"
  end

end
