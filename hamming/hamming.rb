class Hamming

	VERSION = 1

	def self.compute(strandA, strandB)
		a = strandA.split("")
	 	b = strandB.split("")

      a.length != b.length ? (raise ArgumentError) : (0...a.length).count{ |index| a[index] != b[index]}
	end

end 
