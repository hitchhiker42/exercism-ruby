class Complement

	VERSION = 2

   @@dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}
   # @@rna_complements = @@dna_complements.invert
   @@rna_complements = {"U" => "A", "C" => "G", "G" => "C", "A" => "T"}

	def self.of_dna(dnastrand)
		dna = dnastrand.split('')
		rna = []

		dna.map do |n|
			@@dna_complements[n] == nil ? (raise ArgumentError) : (rna << @@dna_complements[n])
		end
		rna.join('')
	end	

   def self.of_rna(rnastrand)
    rna = rnastrand.split('')
    dna = []

    rna.map do |n|
       @@rna_complements[n] == nil ? (raise ArgumentError) : (dna << @@rna_complements[n])
    end
    dna.join('')
   end   
	
end

# Complement.of_rna('UGAACCCGACAUG')
# Complement.of_rna('T')