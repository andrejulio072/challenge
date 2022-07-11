#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    # Part 1, See the principal diagonal
    #principal_d = arr[0][0] + arr[1][1]+ arr[2][2]
    first_diagonal = arr.map.with_index {|row, i| row[i]} .inject :+

    # part 2, Sum of the elements for the secondary diagonal
    # secondary_d = arr[2][0] + arr[1][1]+ arr[0][2]
    inverted_diagonal = arr.map.with_index {|row, i| row[-i-1]} .inject :+

    # part3, Do the absolute difference
     x = first_diagonal - inverted_diagonal
    return x.abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
