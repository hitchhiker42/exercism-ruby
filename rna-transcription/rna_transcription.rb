class Complement

VERSION = 2

@@dna_complements = {"A" => "U", "G" => "C", "C" => "G", "T" => "A"}

def self.of_gene(strand, dna)
   converted_string = ""
   dna == true ? (complements = @@dna_complements) : (complements = @@dna_complements.invert)

   strand.each do |n|
      # dna == true ? (complements = @@dna_complements[n]) : (complements = @@dna_complements.key(n))
      complements[n].nil? ? (raise ArgumentError) : (converted_string += complements[n])
   end
   converted_string

end

def self.of_dna(dnastrand)
	dna = dnastrand.split('')
   of_gene(dna, true)
end	

def self.of_rna(rnastrand)
   rna = rnastrand.split('')
   of_gene(rna,false)
end  
	
end