unique_chars = 0b0
a = 'dabcabce'
curr = 0
a.each_char { |c|
  puts "processing #{c}"
  char_code = c.bytes.to_a[0]
  puts "c = #{char_code.to_s(2)} unique_chars = #{unique_chars.to_s(2)}"
  if unique_chars >> char_code & 0x01 == 0
    puts 'inserting'
    a[curr] = c
    curr += 1
  end
  unique_chars |= 1 << char_code
}
puts a.slice(0, curr)
