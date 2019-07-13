class PigLatinizer

  attr_reader :text
 
  def initialize(text_from_user)
    @text = text.downcase
  end


  def translatePigLatin

    regexpvow = /^[aeiou]/
    regexpcons = /^([^aeiou])+/g

    if regexpvow.test
      @text + "way"

    else 
      strasarr =  (@text + @text.match(regexpcons) + "ay").split("");
      strasarr.splice(0,@text.match(regexpcons)[0].length);
      strasarr.join("");
    end
  end


end
