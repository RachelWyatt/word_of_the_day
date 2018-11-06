class WordOfTheDay::CLI

  def call
    greeting
    menu
    goodbye
  end
  
  def greeting
  puts "Welcome to Word Of The Day! The Word of the Day for November 9th is: Voracious
    Voracious adj. An eager approach to an activity; Wanting or devouring great quantities of something or somebody: 'She has a voracious appetite for life.'"

  end
  
  def menu
      puts "Type 1. to learn more about today's Word of the Day, 2. to see Words of the Day for the last week, and exit to exit the CLI."
  end
  
  def goodbye
    puts "Come back tomorrow to learn a new word!"
  end
  
end