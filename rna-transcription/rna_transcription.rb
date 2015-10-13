class Complement

	VERSION = 2
	
	def self.of_dna(dnastrand)
		dna = dnastrand.split('')
		dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}
		rna = []

		# dna.each do |n|
		# 	if n != ('A' || 'G' || 'T' || 'C')
		# 		raise ArgumentError
		# 	else
		# 		dna_complements.each do |k,v|
		# 			if n == k
		# 				rna << v 
		# 			end
		# 		end
		# 	rna.join('')
		# 	end
		# end

		i = 0
		while i <= dna.length
			dna_complements.each do |k,v|
				# if (dna[i] == dna.length) && (dna[i] != k)
				# 	raise ArgumentError
				# 	puts dna[i]
				if dna[i] == k
					rna << v 
				end
			end
			i += 1
		end

		if rna.length == dna.length
			rna.join('')
		else
			raise ArgumentError
		end
	end

	# def self.of_rna(rnastrand)
	# 	rna = rnastrand.split('')
	# 	rna_complements = {"U" => "A", "G" => "C", "C" => "G", "A" => "T"}
	# 	dna = []

	# 	rna.each do |n|
	# 		rna_complements.each do |k,v|
	# 			if n == k
	# 				dna << v
	# 			end
	# 		end
	# 	end
	# 	dna.join('')
	# end

end

Complement.of_dna('ACGTGGTCTTAA')