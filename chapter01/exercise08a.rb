def is_rotation(string1, string2)
   test_string = string1 + string1
   string1.length==string2.length && !test_string.index(string2).nil?
end