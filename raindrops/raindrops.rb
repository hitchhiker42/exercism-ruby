class Raindrops

  def self.convert(num)
    conversion = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    result = ''

    conversion.each { |factor, sound| result += sound if num % factor == 0 }
    result.empty? ? num.to_s : result
  end

end