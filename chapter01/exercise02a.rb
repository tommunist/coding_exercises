word = ['a', 'b', 'c', 'd', 'e', nil]

last_index_to_swap = word.length-2
(0..last_index_to_swap/2).each { |i|
  puts "swap #{word[i]} with #{word[last_index_to_swap-i]}"
  curr = word[i]
  word[i] = word[last_index_to_swap-i]
  word[last_index_to_swap-i] = curr
}
puts word
