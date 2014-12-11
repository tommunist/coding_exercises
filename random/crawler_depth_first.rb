require 'set'


class Crawler
  def initialize
    @urls_map = {
        'http://123.com' => ['http://456.com', 'http://789.com'],   #         .-----123
        'http://456.com' => ['http://222.com'],                     #         |    /  \
        'http://222.com' => ['http://456.com', 'http://123.com'],   #         | 789   456
        'http://789.com' => ['http://222.com']                      #         |   \   / |
    }                                                               #         .----222--.
    @visited = Set.new
  end

  def go(url)
    unless @visited.include? url || url.nil?
      puts "Processing #{url}"

      @visited.add url
      @urls_map[url].each do |url_to_follow|
        go(url_to_follow)
      end
    end
    @visited
  end

end


crawler = Crawler.new
crawler.go('http://123.com')
