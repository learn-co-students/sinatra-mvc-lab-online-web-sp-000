require 'pry'

class PigLatinizer
   
    def piglatinize(words)
        # binding.pry
        pl = words.split.map do |t|
            if t.start_with?(/[AEIOUaeiou]/)
                "#{t}" + "way"
            else
                t.delete_prefix(t.slice(0...t.index(/[aeiou]/))) + t.slice(0...t.index(/[aeiou]/)) + "ay"
            end  
        end  
        pl.join(" ")
    end
end