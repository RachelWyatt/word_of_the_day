class WordOfTheDay::Word

attr_accessor :name, :definition

def self.word_list
  word_1 = self.new
  word_1.name = "Sycophant"
  word_1.definition = "Sycophant n. A person who acts attentively toward someone in order to gain advantage; a servile flatterer."
  word_2 = self.new
  word_2.name = "Perfidious"
  word_2.definition = "Perfidious adj. Deceitful and untrustworthy. “A perfidious relationship.”"
  word_list = []
  word_list << word_1
  word_list << word_2
  word_list
end

def self.add_word_to_list

end

end
