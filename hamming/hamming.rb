class Hamming

	VERSION = 1

	def self.compute(strandA, strandB)
		a = strandA.split("")
		b = strandB.split("")
		distance = 0
		i = 0

		while i <= a.length
			if a.length != b.length
				raise ArgumentError
			elsif a[i] != b[i]
				distance += 1
				i += 1
			else
				i += 1
			end
		end
		distance
	end
end 