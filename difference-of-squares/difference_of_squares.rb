class Squares

  def initialize(number)
    @number = number
    @array = (1..@number)
  end

  def square_of_sums
    (@array.inject(&:+))**2
  end

  def sum_of_squares
    @array.inject { |sums, n| sums + (n**2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end