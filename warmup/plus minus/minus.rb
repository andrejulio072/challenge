#!/bin/ruby

require "json"
require "stringio"

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  # Write your code here
  n = arr.count

  nr_positive = 0 
  nr_negative = 0
  nr_zeros = 0

  arr.each do |number|
    if number > 0
      nr_positive += 1
    elsif number < 0
      nr_negative += 1
    else
      nr_zeros += 1
    end
  end

  puts(nr_positive.to_f / n)
  puts(nr_negative.to_f / n)
  puts(nr_zeros.to_f / n)
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
