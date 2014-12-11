char_map = 0b0
'abcdefghija'.each_byte { |c|
  puts "char = #{c.to_s(2)} char_map=#{char_map.to_s(2)}"
  raise 'Unique character violation' unless ((char_map >> c) & 1 == 0)
  char_map |= 1 << c
}
