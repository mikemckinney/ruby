def caesar_cipher(text, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  transformed_text = ""
  text.split("").each do |char|   #splits string into indv chars
    if "?.,! ".include?(char)
      transformed_text << char    #ifchar is special add to transformed_text array
    else
      transformed_char = alphabet[(alphabet.index(char.downcase) + num) % alphabet.size] #uses modulo to get index. used to                                                                                                   wrap back to beginning of alphabet. 
      if char == char.upcase
        transformed_text << transformed_char.upcase #adds upcase char to array if char is upcase
      else
        transformed_text << transformed_char #adds other case to array
      end
    end
  end
  return transformed_text.strip
end

print caesar_cipher("What A sTriNg!", 5)
print caesar_cipher("Bmfy F xYwnSl!", -5) 
