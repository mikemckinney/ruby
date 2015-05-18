# senior >= 55 years old
# croquet handicap > 7
#
#  input array of arrays, [age, handicap]
#  output strings, either open or senior
#
def openOrSenior(data)
      a = data
      a.each do |sub_array|
            sub_array.each do |num, hand|
             puts "#{num} and #{hand}"
           end 
    end

end


openOrSenior([[16, 23],[73,1],[56, 20],[1, -1]])
