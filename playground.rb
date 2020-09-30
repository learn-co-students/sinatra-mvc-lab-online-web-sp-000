require 'pry'

def run(text)
        
    a = text.map.tap do |word|

        word = word + "ay"
        # if word == "this"
        #     word = "OK"
        #     puts word
        # else
        #     word = "NO"
        # end
        # word
        # puts word
        
    end

    a
    
end

puts run(["this", "is"]).inspect