class Hamming

VERSION = 1

  def self.compute(str_a, str_b)

  raise ArgumentError,'unequal string lengths' unless str_a.length == str_b.length
    (0...str_a.length).count { |index| str_a.chars[index] != str_b.chars[index] }
  end

end

Hamming.compute('AG', 'CT')
Hamming.compute('GGACTGA', 'GGACTGA')