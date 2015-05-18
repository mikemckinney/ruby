
def findWord(query, array_of_strings)
   endarray = []
   arry = array_of_strings
   #arry = arry.map(&:downcase)
   q = query
    

   arry.each do |word|
     if word.downcase.include?(q.downcase) 
        endarray << word
     end
end

 
endarray[0] = "Empty" if endarray.empty? 

  
print endarray

#return endarray


end

a = ["elf", "bog creature", "bee", "milk", "FROGS"]
findWord("og", a)
findWord("26", a)
findWord("me", a)
findWord(" ", a)
findWord("MIL", a)
