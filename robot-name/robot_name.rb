class Robot
  # attr_reader :name

  RAND_LETTER = ('A'..'Z').to_a
  RAND_NUMBER = [] << rand(0..9) << rand(0..9) << rand(0..9)

  def name
    @name
  end

  def initialize
    @name = ''
    @name << RAND_LETTER.sample(2).join('')
    @name << RAND_NUMBER.sample(3).join('')
  end

  def reset
    initialize
  end

end