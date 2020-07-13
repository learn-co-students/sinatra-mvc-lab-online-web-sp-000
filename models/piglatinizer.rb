
require 'pry'
class PigLatinizer
attr_accessor :text, :new, :arr, :latin, :result

def initialize
end

def piglatinize(text)
  @text = text
  @new = []
  @arr = @text.split
  @arr.each do |word|
    @x = word.to_s
    if @x.match(/\b[AEIOUaeiou][a-z]*\b/)
        @latin_vowel = "#{@x}way"
        @new.push(@latin_vowel)
    else
       @c = @x.scan(/\w/)
       @w = @c.insert(-1, @c.delete_at(0))
        @w.insert(-1, @w.delete_at(0)) if !@w[0].match(/\b[AEIOUaeiou][a-z]*\b/)
        @w.insert(-1, @w.delete_at(0)) if !@w[0].match(/\b[AEIOUaeiou][a-z]*\b/)
       @latin_cons = "#{@w.join("")}ay"
       @new.push(@latin_cons)
    end
  end
  @result = @new.join(" ")
  @result
end

# piglatinize("hello there person")

# def starts_with_a_vowel?(word)
#     if word.match(/\b[AEIOUaeiou][a-z]*\b/)
#       true
#     else false
#     end
# end



end
