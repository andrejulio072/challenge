#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'flippingBits' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER n as parameter.
#

def flippingBits(n)
    # Write your code here

    #part 1 transformar em binario
    num = n.to_s(2)
    # parte 2 colocar em 32b
    bin = num.rjust(32, "0")
    # parte 3,  do the flip
    flip = bin.chars.map {|char| char == "1" ? "0" : "1"}.join
    #parte 4, trasnformar in integer
    flip.to_i(2)



end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.strip.to_i

q.times do |q_itr|
    n = gets.strip.to_i

    result = flippingBits n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
