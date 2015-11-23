class Hamming

VERSION = 1

def self.compute(str_a, str_b)

  raise ArgumentError, 'Invalid Input' unless (str_a + str_b).is_a? String
  
  asize = str_a.length
  bsize = str_b.length

  raise ArgumentError,'unequal string lengths' unless asize == bsize
    (0...asize).count { |index| str_a.chars[index] != str_b.chars[index] }

end
end