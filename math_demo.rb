require 'mathn'
def number_property(n)

arry = []

 if n.prime?
   arry << true 
 else 
   arry << false
end

 if n.to_i.even?
   arry << true
 else 
   arry << false
end
   
 if n % 10 == 0
   arry << true
 else
   arry << false 
end

print arry

end

number_property(-10)
number_property(2)
number_property(120)
number_property(125)
