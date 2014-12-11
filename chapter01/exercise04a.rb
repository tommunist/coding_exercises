def is_anagram(string1, string2)
  return false if string1.length != string2.length || string1 == string2
  chars = {}
  string1.each_char { |c|
    chars[c] = chars.has_key?(c) ? chars[c] + 1 : 1
  }
  string2.each_char { |c|
    chars[c] = chars.has_key?(c) ? chars[c] - 1 : -1
  }
  chars.delete_if {|_,value| value == 0}.size == 0
end
