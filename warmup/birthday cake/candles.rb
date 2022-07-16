#!/bin/ruby

require "json"
require "stringio"

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
  # Write your code here
  # m = candles.max
  # n = candles.count(m)
  # n
  max = 0
  count = 0
  candles.each do |num|
    if num > max
      max = num
      count = 1
    elsif num == max
      count += 1
    end
  end
  count
end

fptr = File.open(ENV["OUTPUT_PATH"], "w")

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles

fptr.write result
fptr.write "\n"

fptr.close()
