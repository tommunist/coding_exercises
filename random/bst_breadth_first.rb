d = { name: 'd' }
e = { name: 'e' }
f = { name: 'f' }
g = { name: 'g' }
c = { name: 'c', left: f, right: g }
b = { name: 'b', left: d, right: e }
a = { name: 'a', left: b, right: c }


def traverse(tree)
  list = [tree]
  while list.size > 0 do
    current = list.delete_at 0
    list << current[:left] unless current[:left].nil?
    list << current[:right] unless current[:right].nil?
    puts "Processing #{current[:name]}"
  end
end

traverse(a)
