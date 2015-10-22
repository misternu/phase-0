# I worked on this challenge with Nil Thacker.


# Your Solution Below

def valid_triangle?(a, b, c)
 if a > (b+c)
   return false
 elsif b > (a + c)
   return false
 elsif c > (a + b)
   return false
 elsif (a == 0) || (b == 0) || (c == 0)
   return false
 else
   return true
 end
end
