class PigLatinizer
    attr_reader :text
  
    def piglatinize(text)

      words = text.split(" ")
      processed_words = []

      words.each do |word|
        if word.start_with?("a","e","i","o","u","y","A","E","I","O","U","Y")
          processed_words << "#{word}way"
        else
          until word.start_with?("a","e","i","o","u","y","A","E","I","O","U","Y")
            first_character = word[0]
            word.slice!(0)
            word = "#{word}#{first_character}"
          end
          processed_words << "#{word}ay"
        end
      end
      processed_words.join(" ")
    end
  end