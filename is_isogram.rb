def is_isogram(string)
  @iso = string
  single = @iso.split("")

  frequencies = Hash.new(0)   #new empty hash named frequencies

#itterates through array, assigns each element as key and frequency to value +1 for every occurence. 
  single.each { |let| frequencies[let]  += 1 } 

#sorts ascending by value (frequency)
  frequencies = frequencies.sort_by { |let, frequency| frequency }

#turns sort into desc
  frequencies.reverse!
 
#displays any letter used more than once
  frequencies.each { |let, frequency|  puts "#{let} is repeated #{frequency.to_s} times." if frequency > 1}
 
end

puts "Enter a word to see if it is an isogram: "
text = gets.chomp
is_isogram(text)
