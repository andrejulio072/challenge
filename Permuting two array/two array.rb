#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'twoArrays' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY A
#  3. INTEGER_ARRAY B
#

def twoArrays(k, a, b)
    # Write your code here
     a_dash = a.sort
     b_dash = b.sort.reverse

     a_dash.each_with_index do |item, idx|
        return "NO" if item + b_dash[idx] < k
      end

      return "YES"

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.strip.to_i

q.times do |q_itr|
    first_multiple_input = gets.rstrip.split

    n = first_multiple_input[0].to_i

    k = first_multiple_input[1].to_i

    A = gets.rstrip.split.map(&:to_i)

    B = gets.rstrip.split.map(&:to_i)

    result = twoArrays k, A, B

    fptr.write result
    fptr.write "\n"
end

fptr.close()
