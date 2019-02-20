class PigLatinizer

  def piglatinize(input)
    words = input.split(' ')
    words.collect do |string|
      if string[/^[AEIOUaeiou]/] # Starts with a vowel
        string << "way"
      else
        vowel_index = string.index(string[/[AEIOUYaeiouy]/]) # Has vowel or y in word
        string[vowel_index..string.length]<<string[0..vowel_index-1]<<"ay"
      end
    end.join(' ')
  end
end
