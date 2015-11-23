class Robot

  RAND_LETTER = ('A'..'Z').to_a
  RAND_NUMBER = (0..9).to_a 

  def name
    @name
  end

  def initialize
    reset
  end

  def reset
    @name = ''
    @name << RAND_LETTER.sample(2).join('')
    @name << RAND_NUMBER.sample(3).join('')
  end

end