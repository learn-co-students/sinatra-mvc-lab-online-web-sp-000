class PigLatinizer
    

   
    def piglatinize(text)
        text_arr = text.split(" ")
        converted_str = ""
        text_arr.each do |word|
            vocal = "way"
            leading_cons = word.split(/[aAeEoOuUiI]/).first
            if leading_cons != "" && leading_cons 
               word[0, leading_cons.length]=""
               word = word + leading_cons
               vocal = "ay"
            end
            if word[word.length-1].to_s.downcase.scan(/[iyea]/).length >0
                vocal = "way"
            end
            word = word + vocal+" "
            converted_str+=word
        end
        converted_str.strip!
    end

end