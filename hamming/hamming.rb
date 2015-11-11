class Hamming

VERSION = 1

  def self.compute(strand_a, strand_b)
    a = strand_a.each_char { |c| c }
    b = strand_b.chars

    raise ArgumentError, 'unequal string lengths' unless a.length == b.length
      (0...a.length).count { |index| a[index] != b[index] }

  end

end