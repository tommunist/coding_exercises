unique_chars = {}
new_str = ''
'abcabc'.each_char { |char|
  new_str << char unless unique_chars.has_key? char
  unique_chars[char] = true
}
puts new_str
