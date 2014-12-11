char_map = {}
'abcdefghijk'.each_char { |c|
  puts "char = #{c} char_map=#{char_map}"
  raise 'Unique character violation' if char_map.has_key?(c)
  char_map[c] = true
}
