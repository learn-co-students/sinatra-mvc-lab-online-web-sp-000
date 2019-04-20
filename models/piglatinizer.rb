class PigLatinizer 
  attr_reader :user_entry
  
  def initialize(user_entry)
    @user_entry = user_entry
  end 
  
  def convert_pl
  modified_array = []
  modify_string = user_entry.split(" ")
  modify_string.each do |each_word|
    store_match = each_word.match(/\b[bcdfghjklmnpqrstvwxyz]+/).to_s

    if store_match.start_with?(/\b[aeiou]/)

      modified_word = each_word.concat("way")
  else
    modified_word = each_word.gsub!("#{store_match}", "").concat("#{store_match}" + "ay")

  end
  modified_array << modified_word

end
rejoined_string = modified_array.join(" ")

rejoined_string
end

end