class Prime
  def nth(nprime)
    primes = [2]
    i = 1
    curr_num = 3

    raise ArgumentError unless nprime != 0

    while i < nprime
      root = Math.sqrt(curr_num).floor
      eff_primes = primes.select { |p| p <= root }

      if eff_primes.all? { |p| curr_num % p != 0 }
        primes << curr_num
        i += 1
      end

      curr_num += 2
    end
    primes[-1]
  end
end