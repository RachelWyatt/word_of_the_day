class WordOfTheDay::Word

attr_accessor :name, :definition

def self.word_list
  word_1 = self.new
  word_1.name = "Sycophant"
  word_1.definition = "Sycophant n. A person who acts attentively toward someone in order to gain advantage; a servile flatterer."
  puts "1. #{word_1.name}"
end

end
