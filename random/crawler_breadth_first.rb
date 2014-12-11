require 'set'
urls_map = {
    'http://123.com' => ['http://456.com', 'http://789.com'],          #         .-----123
    'http://456.com' => ['http://222.com'],                            #         |    /  \
    'http://222.com' => ['http://456.com', 'http://123.com'],          #         | 789   456
    'http://789.com' => ['http://222.com']                             #         |   \   / |
}                                                                      #         .----222--.
list = ['http://123.com']                                              #
visited = Set.new
while list.size > 0 do

  current = list.delete_at(0)
  binding.pry
  puts "Processing #{current}"
  list.concat(urls_map[current]) unless visited.include? current
  visited.add current
end
