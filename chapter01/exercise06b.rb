require 'pry'

matrix = [
    [1,2,5,18],     
    [3,4,7,12],
    [9,6,0,13],
    [90,30,28,30]
  ]
  layer_max = matrix.size/2 - 1
  new_matrix = Array.new(matrix.size) { Array.new(matrix.size) }
  n = matrix.size - 1
  (0..layer_max).each do |layer|
    squares = matrix.size - (layer*2) - 1
    puts "layer #{layer}"
    (0..squares).each do |i|
      puts "cell offset #{i}"
      left= matrix[layer][n-i-layer]  
      puts "saved value [#{left}] at (#{layer},#{n-i-layer})"
      puts "move bottom to left [#{matrix[n-i-layer][n-layer]}] (#{n-i-layer},#{n-layer}) -> (#{layer},#{n-i-layer})"
      new_matrix[layer][n-i-layer] = matrix[n-i-layer][n-layer] #left = bottom

      puts "move right to bottom [#{matrix[n-layer][i+layer]}] (#{n-layer},#{i+layer}) -> (#{n-i-layer},#{n-layer})"
      new_matrix[n-i-layer][n-layer] = matrix[n-layer][i+layer] # bottom = right
      
      puts "move top to right [#{matrix[i+layer][layer]}] (#{i+layer},#{layer}) -> (#{n-layer},#{i+layer})"
      new_matrix[n-layer][i+layer] = matrix[i+layer][layer] #right = top
      puts "move left to top [#{left}] (#{layer},#{n-i-layer}) -> (#{i+layer},#{layer})"        
      new_matrix[i+layer][layer] = left #top = left
      puts "New Matrix"
      pp new_matrix[0]
      pp new_matrix[1]
      pp new_matrix[2]
      pp new_matrix[3]
    end
  end  
  new_matrix
  