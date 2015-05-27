def frequency_method(array)

  frequencies = Hash.new(0)

  array.each { |word| frequencies[word] += 1 }
  
  frequencies = frequencies.sort_by do |count, word|
    count
 end
return frequencies
end

#puts frequency_method(["sorry", "not", "sorry"])


