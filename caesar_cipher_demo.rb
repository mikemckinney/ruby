def caesar_cypher(string, mod)

alphabet = ('A'..'Z').to_a.concat(('a'..'z').to_a)
ordarray = alphabet.map { |c| c.ord }

text_to_encrypt = string.chars.to_a
unenc_ord = text_to_encrypt.map { |c| c.ord }

unenc_ord.each do |c|
  if c.between?(65, 90 - mod) 
     print c + mod
  elsif c.between?(91,96) 
     print c
  elseif 
string.each_char { |c| print c.ord + 5 }


#puts ordarray   
#print unenc_ord
end




caesar_cypher("this is sparta", 5)
