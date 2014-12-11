unique_chars = 0b00
a = 'abcabc'
new_str = ''
a.each_byte { |c|
  puts "c = #{c.to_s(2)} unique_chars = #{unique_chars.to_s(2)}"
  new_str << c unless unique_chars >>c & 0x01 == 0
  unique_chars |= 1 << c
}
puts new_str
