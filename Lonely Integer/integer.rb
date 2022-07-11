#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#
def lonelyinteger(a)
    # Write your code here
    #part 1, verifying each element inside the array
    a.each do |value|
      #part 2, return the unique number with a condition statement
        return value if a.count(value) == 1
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = lonelyinteger a

fptr.write result
fptr.write "\n"

fptr.close()
