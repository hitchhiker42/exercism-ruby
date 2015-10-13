class Complement
	def self.of_dna(dnastrand)
		dna = dnastrand.split('')
		dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}
		rna = []

		dna.each do |n|
			dna_complements.each do |k,v|
				if n == k
					rna << v
				elsif 
				end
			end
		end
		rna.join('')
	end

	def self.of_rna(rnastrand)
		rna = rnastrand.split('')
		rna_complements = {"U" => "A", "G" => "C", "C" => "G", "A" => "T"}
		dna = []

		rna.each do |n|
			rna_complements.each do |k,v|
				if n == k
					dna << v
				end
			end
		end
		dna.join('')
	end

end