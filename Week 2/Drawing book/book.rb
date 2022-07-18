#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pageCount' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER p
#

def pageCount(n, p)
    # Write your code here
    # Write your code here
    # n pages, flip to page p, return minimum no of pages to turn

    # n = 1 => 0
    # I think we to normalize p to odd
    p = p % 2 == 0 ? p : p - 1
    return [p / 2,  (n-p) / 2].min
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

p = gets.strip.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()


# def pageCount(page_number, page)
#     return 0 if page == 1 || page == page_number

#     middle = page_number / 2

#     if page > middle
#         base = page_number - page
#         base -= 1 if page_number.odd?

#         return (base / 2.0).round
#     end

#     ((page - 1) / 2.0).round
# end
