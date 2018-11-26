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
    WordOfTheDay::Word.create_word_list

    WordOfTheDay::Word.all.each.with_index(1) do |entry, i|
      puts "#{i}. #{entry.name}"
    end
  end

 def menu
    input = nil
    until input == "exit"
      puts "Type the corresponding number to learn more about a word, list to see the list of words and exit to exit the CLI."
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 13
        word = WordOfTheDay::Word.all[input.to_i-1]
        puts "#{word.name}"
        puts "#{word.type}"
        puts "#{word.definition}"
        puts "---------------"
      elsif input == 'list'
        WordOfTheDay::Word.all.each.with_index(1) do |entry, i|
          puts "#{i}. #{entry.name}"
        end
      elsif input == "exit"
      else puts "Not sure what you meant."
        "---------------"
      end
    end
  end

  def goodbye
    puts "Come back tomorrow to learn a new word!"
  end

end
