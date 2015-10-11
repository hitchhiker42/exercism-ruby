class Hamming

	VERSION = 1
	
	def self.compute(strandA, strandB)
		a = strandA.split("")
		b = strandB.split("")
		distance = 0
		i = 0
		if a.length != b.length
			raise ArgumentError
		else
			while i <= a.length
				if a[i] != b[i]
					distance += 1
					# print a[i]
					i += 1
				else 
					i += 1
				end
			end
			distance 
		end
	end

	# compute('GGACGGATTCTG', 'AGGACGGATTCT')
end 