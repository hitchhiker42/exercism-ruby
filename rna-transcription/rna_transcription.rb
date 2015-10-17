class Complement

	VERSION = 2

   @@dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}

	def self.of_dna(dnastrand)
		dna = dnastrand.split('')
		rna = []

		dna.map do |n|
			@@dna_complements[n] == nil ? (raise ArgumentError) : (rna << @@dna_complements[n])
		end
		rna.join('')
	end	

  # def self.of_rna(rnastrand)
  #   rna = rnastrand.split('')
  #   dna = []

  #   rna.map do |n|
  #      @@rna_complements[n] == nil ? (raise ArgumentError) : (dna << @@rna_complements[n])
  #   end
  #   dna.join('')
  # end   

  def self.of_rna(rnastrand)
    rna = rnastrand.split('')
    dna = []

    rna.map do |n|
       @@dna_complements.key(n) == nil ? (raise ArgumentError) : (dna << @@dna_complements.key(n))
    end
    dna.join('')
  end  
	
end