#!/bin/ruby

require "json"
require "stringio"

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
  # Write your code here
  alice, bob, i = 0
  # Write your code here
  while i < 3
    if a[i] > b[i]
      alice += 1
    elsif a[i] < b[i]
      bob += 1
    end
    i += 1
  end
  [alice, bob]
end

fptr = File.open(ENV["OUTPUT_PATH"], "w")

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
