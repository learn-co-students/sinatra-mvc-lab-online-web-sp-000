class PigLatinizer 
  # attr_reader :user_entry
  
  # def initialize(user_entry)
  #   @user_entry = user_entry
  # end 
  
  
  def piglatinize(user_entry)
    convert_pl(user_entry)
  end 
  
  def convert_pl(user_entry)
  modified_array = []
  modify_string = user_entry.split(" ")
  
  modify_string.each do |each_word|
    store_match = each_word.match(/\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).to_s

    if each_word.start_with?(/\b[aeiouAEIOU]/)

      modified_word = each_word.concat("way")
      # elsif each_word.start_with?(/\b[.]/)
      # modified_word = 
  else
    
    modified_word = each_word.sub!("#{store_match}", "").concat("#{store_match}" + "ay")

  end
  modified_array << modified_word

end
rejoined_string = modified_array.join(" ")

rejoined_string
end

end