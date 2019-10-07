
require 'pry'
class PigLatinizer
attr_accessor :text, :new, :arr

def initialize

end

def piglatinize(text)
  @new = []
  @arr = text.split
  @arr.each do |ne|
    @new << ne.split
    # ne.push(ne[0])
    # ne[0].delete
    # ne.push(ne[0])
    # ne[0].delete


  end
  @new
end


end
