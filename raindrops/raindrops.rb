require 'prime'

class Raindrops

	def self.string_conv(result_arr, num)
		if result_arr == []
			(result_arr << "#{num}").join('')
		else
			result_arr.join('')
		end
	end

	def self.convert(num)
	result = []
	conversion = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
	all_primes = Prime.prime_division(num).flatten

		all_primes.each do |prime|
			conversion.each do |key, value|
				if prime == key
					result << value
				end
			end
		end
		string_conv(result, num)
	end
end