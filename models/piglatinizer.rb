class PigLatinizer

    attr_accessor :text

    Alpha = ('a'..'z').to_a
    Vowels = %w[a e i o u]
    Consonants = Alpha - Vowels
    
    def piglatinize(text)
        str = text.split(" ")
        pig = str.map do |word| 
            if Vowels.include?(word[0].downcase)
                word + 'way'
            elsif Consonants.include?(word[0].downcase) && Consonants.include?(word[1].downcase) && Consonants.include?(word[2].downcase)
                word[3..-1] + word[0..2] + 'ay'               
            elsif Consonants.include?(word[0].downcase) && Consonants.include?(word[1].downcase)
                word[2..-1] + word[0..1] + 'ay'
            elsif word[0..1] == "qu" 
                word[2..-1]+"quay"
            elsif word[0..2] == "squ"
                word[3..-1]+"squay"
            else Consonants.include?(word[0].downcase)
                word[1..-1] + word[0..0] + 'ay'
            end
        end 
        pig.join(" ")
    end

    
end 
