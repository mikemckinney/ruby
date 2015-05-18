def findWord (query, array)
  a = array.grep(/#{query}/i)
  a.empty? ? a[0] = "Empty" : a

print a

end

a = ["elf", "bog creature", "bee", "milk", "FROGS"]
findWord("og", a)
findWord("26", a)
findWord("me", a)
findWord(" ", a)
findWord("MIL", a)

