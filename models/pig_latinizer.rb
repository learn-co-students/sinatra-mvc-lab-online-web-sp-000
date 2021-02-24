class PigLatinizer

  attr_reader :sent

  def initialize(sent)
    @sent= sent
  end

  def translate
    result = @sent.split(" ").map do |word|
      word = word.gsub("qu", " ")
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      word = word.gsub(" ", "qu")
    end
    result.join(" ")
  end
end
