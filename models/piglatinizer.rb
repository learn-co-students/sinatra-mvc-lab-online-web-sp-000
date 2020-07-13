class PigLatinizer

  attr_accessor :text



  def piglatinize(text)
    words=text.split(" ")#so get all words in array eg. ['flatiron', 'school']
    after_transformation=[]#later we can keep pushing transformed words into it

    words.each do |word|
      letters=word.split('')#[f,l,a,t,i,r,o,n]
      if ["a","e","i","o","u"].include?(letters.first.downcase)
        letters<<'way'#[f,l,a,t,i,r,o,n,way]
        after_transformation<<letters.join
      elsif ["pl","th",'pr','wh','sk'].include?("#{letters[0].downcase+letters[1].downcase}")
        first=letters[0]
        second=letters[1]
        2.times {letters.shift}
        letters<<"#{first}#{second}ay"
        after_transformation<<letters.join
      elsif letters[0] && letters[1] && letters[2] && ["str","spr"].include?("#{letters[0].downcase+letters[1].downcase+letters[2].downcase}")
        first=letters[0]
        second=letters[1]
        third=letters[2]
        3.times {letters.shift}
        letters<<"#{first}#{second}#{third}ay"
        after_transformation<<letters.join
      else
        first=letters.first
        letters.shift
        letters<<"#{first}ay"
        after_transformation<<letters.join
      end
    end
    after_transformation.join(" ")
  end


end
