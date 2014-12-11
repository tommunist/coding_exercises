
dict = {

}
def anagram(str)
  letters = str.split(//)
  possible_combos = []
  letters.each_with_index do |letter, index|
    letters_to_mix = Array.new(letters)
    letters_to_mix.delete_at(index)
    puts "hold #{letter}, mix #{letters_to_mix}"
    possible_combos << combos(letter, letters_to_mix)
  end
  possible_combos
end

def combos(letter, letters_to_mix)
  possible_combos = []
  if letters_to_mix.size == 1 then
    a = Array.new(letters_to_mix).unshift(letter)
    puts "return #{a}"
    
  end
  puts "#{letters_to_mix} Meow"
  letters_to_mix.each_with_index do |new_letter, index|
    puts 'meow2'
    
    letters_to_mix_next = Array.new(letters_to_mix)
    "MIX #{letters_to_mix_next}"
    letters_to_mix_next.delete_at index 
    "Hold #{new_letter} mix #{letters_to_mix_next}"
    combos(new_letter, letters_to_mix_next).each do |combo|
      possible_combo = Array.new(combo).unshift(new_letter)
      puts "Poss Comb #{possible_combo}"
      possible_combos << possible_combo
    end

  end
  possible_combos
end


anagram('abc')