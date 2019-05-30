require 'matrix'

def hourglassSum(mat)
  maxHourglass = -1000
  maxIntWide = mat[0].length - 3
  maxIntTall = mat.length - 3
  p maxIntWide
  p maxIntTall
  (0..maxIntWide).each do |row|
    (0..maxIntTall).each do |cell|
      sum = mat[row][cell] + mat[row][cell + 1] + mat[row][cell + 2]
      sum = sum + mat[row + 1][cell + 1 ]
      sum = sum + mat[row + 2 ][cell] + mat[row + 2][cell + 1] + mat[row + 2][cell + 2]
      
      maxHourglass = sum if sum > maxHourglass
    end
  end
  maxHourglass
end


m = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0]]

p hourglassSum(m)