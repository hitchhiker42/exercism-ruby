class Complement

	VERSION = 2

   @@dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}
   @@rna_complements = @@dna_complements.inverse

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
         # puts @@dna_complements.key(n)
         # @@dna_complements.key(n) == nil ? (raise ArgumentError) : (dna << @@dna_complements.key(n))
         @@rna_complements[n] == nil ? (raise ArgumentError) : (dna << @@rna_complements[n])
      end
      puts dna.join('')
   end
	
end

Complement.of_rna('UGAACCCGACAUG')
Complement.of_rna('T')