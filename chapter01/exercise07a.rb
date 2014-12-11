matrix = [
    [1,1,5,18],     
    [3,2,7,12],
    [9,6,20,0],
    [90,30,28,30]
  ]

  columns_to_zero = Set.new
  rows_to_zero = Set.new

  matrix.each_with_index do |row, row_index|
    row.each_with_index do |column, column_index|
    
    if matrix[row_index][column_index] == 0 then
      columns_to_zero.add(column_index)
      rows_to_zero.add(row_index)
      puts "detected zero at (#{row_index},#{column_index})"
    end
  end
  end
  matrix.each_with_index do |row, row_index|
    row.each_with_index do |column, column_index|
      matrix[row_index][column_index] = 0 if columns_to_zero.include?(column_index) || rows_to_zero.include?(row_index)
    end
  end
