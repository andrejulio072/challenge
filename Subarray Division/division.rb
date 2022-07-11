#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthday' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY s
#  2. INTEGER d
#  3. INTEGER m
#

def birthday(s, d, m)
    # Write your code here
i = 0
    count = 0
    while i < s.length
        count += 1 if s.slice(i, m).reduce(&:+) == d
        i += 1
    end
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

first_multiple_input = gets.rstrip.split

d = first_multiple_input[0].to_i

m = first_multiple_input[1].to_i

result = birthday s, d, m

fptr.write result
fptr.write "\n"

fptr.close()
