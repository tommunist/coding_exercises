char_map = Array.new(255)
'abcdefghijka'.each_byte { |c|
  puts "char = #{c} char_map=#{char_map}"
  raise 'Unique character violation' if char_map[c]
  char_map[c] = true
}
