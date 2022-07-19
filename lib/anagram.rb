require "pry"

class Anagram
    attr_accessor :word, :matching

    def initialize(word)
        @word = word
        @matching = []
        self.match(%w[enlists google inlets banana])
    end

    def match(array)
        array.map do | pos_ana |
            anagram = pos_ana.chars.join
            anagram.each_char do | character |
                if @word.include? character
                    matching << character
                end
            end
        end
    end
end

#Send word to class - method invocation
#Send word to class method - method invocation within initialize method
#Break word into single characters - shallow loop 
#Go over array and pull out each possible anagram - shallow loop
#Break possible anagram into single characters - deep loop
#Go over array of possible anagrams character by character
    #Once a letter from the word doesn't match the letter in the array (at it's current index) move onto the next word
    #If all letters matched in both the word and the current word in the array, return that word 

listen = Anagram.new("listen")