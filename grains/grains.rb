class Grains

  def self.square(num)
    2**(num - 1)
  end

  def self.total
    arr = (1..64).to_a
    arr.reduce { |sum, n| sum + square(n) }
  end

end