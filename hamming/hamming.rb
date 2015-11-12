class Hamming

VERSION = 1

  def self.compute(strand_a, strand_b)

    raise ArgumentError, 'unequal string lengths' unless strand_a.length == strand_b.length
    	(0...strand_a.length).count { |index| strand_a.chars[index] != strand_b.chars[index] }

    # raise ArgumentError, 'unequal string lengths' unless strand_a.length == strand_b.length
    # 	strand_a.each_char.count { |c| c != strand_b.chars[index] }

  end

end