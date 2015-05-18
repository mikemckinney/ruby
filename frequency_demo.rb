#Script to get number of times a word is repeated in a string
#
#user input, .chomp cuts of extra whitespace
puts "Enter text: "
  text = gets.chomp

#splits text into separate chunks and assigns to variable
  words = text.split
  frequencies = Hash.new(0)

#For each value in words array assign a to hash with "frequencies" as value, word as key  plus one, sort_by "count"
  words.each { |word| frequencies[word] += 1 }
  frequencies = frequencies.sort_by do |count, word|
    count
end

#for each value in frequencies hash, display word + frequency
frequencies.each do |word, frequency|
    puts word + " " + frequency.to_s
end
