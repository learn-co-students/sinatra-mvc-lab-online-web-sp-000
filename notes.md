Tried code below (wasn't working, need to figure out if vowel? works and flow):
    # def piglatinize(word_or_sentence)
    #     word_or_sentence.split(" ").length == 1 ? piglatinize_word(word_or_sentence) : piglatinize_sentence(word_or_sentence)
    # end

    # def vowel?(char)
    #   char = %w(a e i o u)
    # end

    # def piglatinize_word(word)
    #     # if vowel?(word[0])
    #     #     word = word + "way"
    #     if !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
    #         word = word.slice(3..-1) + word.slice(0,3)
    #     elsif !vowel?(word[0]) && !vowel?(word[1])
    #         word = word.slice(2..-1) + word.slice(0, 2)
    #     elsif !vowel?(word[0])
    #         word = word.slice(1..-1) + word.slice(0)
    #     end
    #     word << "ay"
    # end

    # def piglatinize_sentence(sentence)
    #     sentence.split.collect { |word| piglatinize_word }.join(" ")
    # end
======================================
Other code to try:

