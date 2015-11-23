class Prime
  
  def is_a_prime?(num)
    eff_primes.all? { |p| curr_num % p != 0 }
  end

  def nth(nprime)
    primes = [2]
    i = 1
    curr_num = 3

    raise ArgumentError, 'Invalid Input' unless (nprime.integer? && nprime > 0)

    for i in (0...nprime) do 
      root = Math.sqrt(curr_num).floor
      eff_primes = primes.select { |p| p <= root }

      if (is_a_prime? (curr_num))
        primes << curr_num
      end

      curr_num += 2
    end

    primes.last
  end

end