class Prime
  
  def self.a_prime?(num, primes)
    primes.all? { |p| num % p != 0 }
  end

  def self.nth(nprime)
    primes = [2]
    curr_num = 3

    raise ArgumentError, 'Invalid Input' unless nprime.integer? && nprime > 0

    while primes.length < nprime
      root = Math.sqrt(curr_num).floor
      root_primes = primes.select { |p| p <= root }

      if a_prime?(curr_num, root_primes)
        primes << curr_num
      end
    curr_num += 2
    end

    primes.last
  end
end