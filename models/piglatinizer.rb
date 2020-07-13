    class PigLatinizer
      attr_accessor :user_phrase

      def vowel?(user_phrase)
          vowel = 'aeiouAEIOU'
          vowel.include?(user_phrase[0])
      end

      def piglatinize(user_phrase)
        words = user_phrase.split
        pl_words = words.map do |word|
          if vowel?(word[0])
            word + "way"
          else
            prefix = word[/^([^aeiouAEIOU]+)/]
            suffix = word[prefix.length..word.length]
            suffix + prefix + "ay"
          end
        end
        pl_words.join(" ")
      end
    end
