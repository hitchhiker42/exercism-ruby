class Complement

	VERSION = 2

	def self.join_together(input_str, output_str)
		if input_str.length == output_str.length
			input_str.join('')
		else
			raise ArgumentError
		end
	end
	
	def self.of_dna(dnastrand)
		dna = dnastrand.split('')
		dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}
		rna = []

		dna.each do |n|
			dna_complements.each do |key,value|
				if n == key
					rna << value 
				end
			end
		end
	join_together(rna, dna)	
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
		join_together(dna, rna)	
	end

end

# Complement.of_dna('ACGTGGTCTTAA')