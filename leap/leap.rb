require 'date'

class Year < Date

  VERSION = 1

  def leap?(yr)
    (yr % 4 == 0) || (yr % 400 == 0)
  end

end