class Fixnum

	def to_roman

      conversion_hash = {
         1 => "I",
         4 => "IV",
         5 => "V",
         9 => "IX",
         10 => "X",
         40 => "XL",
         50 => "L",
         90 => "XC",
         100 => "C",
         400 => "CD",
         500 => "D",
         900 => "CM",   
         1000 => "M"
      }

      year_array = self.to_s.chars.map(&:to_i).reverse
      decimal_places = [1,10,100,1000]
      decimal_year = (self.to_s.chars.map(&:to_i).reverse).zip decimal_places

      decimals = decimal_year.map { |i| i.inject(:*) }
      value = []
      i = 0
      while i < year_array.length

      roman_num = conversion_hash[decimals[i]]
      prev_roman_num = conversion_hash[decimal_places[i]]
      
         if roman_num != nil
            value << roman_num
         elsif decimals[i] == 0
            value << ""
         elsif year_array[i].to_i < 5
            value << prev_roman_num.to_s * year_array[i] 
         elsif year_array[i].to_i > 5
            value << conversion_hash[decimal_places[i] * 5].to_s + (prev_roman_num * (year_array[i] - 5))
         end 

         i +=1
      end
      value.reverse.join('')    
	end
end