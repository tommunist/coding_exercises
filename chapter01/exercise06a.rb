def rotate_90(phrase)
  matrix = [
    [1,2,5,18],
    [3,4,7,12],
    [9,6,0,13],
    [90,30,28,30]
  ]
  
  #[90, 9, 3, 1]
  #[30, 6, 4, 2]
  #[28, 0, 7, 5]
  #[30, 13, 12, 18]]
  n = matrix.size - 1
  
  new_matrix = Array.new(matrix.size) { Array.new(matrix.size) }
  matrix.each_with_index do |row, y|
    new_column = []
    row.each_with_index do |cell, x|
      new_matrix[x][y] = matrix[n-y][x]
      # binding.pry

      # y=0 x=0 00 -> 20 (n-y)x
      #     x=1 10 -> 21 (n-y)x   
      #     x=2 20 -> 22 (n-y)x
      # y=1 x=0 01 -> 10 (n-y)x
      #     x=1 11 -> 11 (n-y)x
      #     x=2 21 -> 12 (n-y)x
    end  
  end



end