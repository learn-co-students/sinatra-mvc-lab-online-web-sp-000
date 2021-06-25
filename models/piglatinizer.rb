class PigLatinizer

  def piglatinize(text)
    t = text.split(" ")
    t.map! do |w|
      if w.start_with?(/[aeiouAEIOU]/)
        @result = w + "way"
      else
        word = w.split(/[aeiou]/)
        prefix = word.first
        @result = w.delete_prefix(prefix) + prefix + "ay"
      end
    end
    t.join(" ")
  end
end
