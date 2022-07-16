#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    is_afternoon = s[-2..].eql?("PM")
    h, m, s = s[0 .. 7].split(":")

    converted_h =
        if    h.to_i == 12 && is_afternoon  then h
        elsif h.to_i == 12 && !is_afternoon then "00"
        elsif is_afternoon                  then h.to_i + 12
        else h
        end

    "#{converted_h}:#{m}:#{s}"

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
