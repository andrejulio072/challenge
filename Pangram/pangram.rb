#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pangrams' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def pangrams(s)
    # Write your code here
    #part 1, verifying if the string include all the english alphabets letters
    alphabet = ("a".."z").to_a
    chars = s.downcase.chars
    #part 2, case-insentisive
    if alphabet.all? { |c| chars.include? c.downcase }
    return 'pangram'
else
    return 'not pangram'
end

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = pangrams s

fptr.write result
fptr.write "\n"

fptr.close()
