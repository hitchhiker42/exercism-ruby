require 'prime'

class Raindrops

  def self.convert(num)
  conversion = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
  all_primes = Prime.prime_division(num).flatten

    result = all_primes.map{ |prime| prime = conversion[prime] }.join('')

    result == "" ? num.to_s : result
  end

end