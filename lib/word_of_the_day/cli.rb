class WordOfTheDay::CLI

  def call
    greeting
    menu
    goodbye
  end

  def greeting
  puts "Welcome to Word Of The Day! The Word of the Day for November 9th is: Voracious
    Voracious adj. An eager approach to an activity; Wanting or devouring great quantities of something or somebody: 'She has a voracious appetite for life.'
    1. Word 1
    2. Word 2
    3. Word 3"

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
