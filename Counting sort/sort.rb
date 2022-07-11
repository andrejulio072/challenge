#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingSort' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def countingSort(arr)
    # Write your code here
    #part 1, create an array of 0, 100 times
    result = Array.new(100,0)
    #part 2, store the frequency in the array
    arr.each { |n| result[n]+=1}
    #part 3, return the array
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = countingSort arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()
