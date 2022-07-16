#!/bin/ruby

require "json"
require "stringio"

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  # Write your code here
  arr.sort!
  sum = arr.sum
  max = sum - arr[0]
  min = sum - arr[-1]
  puts("#{min} #{max}")
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
