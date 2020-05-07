require 'pry'

class PigLatinizer
   
    def piglatinize(words)
        pl = words.split.map do |t|
            if t.start_with?(/[AEIOUaeiou]/)
                "#{t}" + "way"
            elsif !t.match(/[AEIOUaeiou]/)
                "#{t}" + "ay"
            else
                t.delete_prefix(t.slice(0...t.index(/[aeiou]/))) + t.slice(0...t.index(/[aeiou]/)) + "ay"
            end  
        end  
        pl.join(" ")
    end
end