class Fixnum

	def to_roman

      conversion_hash = {
         1 => "I",
         2 => "II", 
         3 => "III",
         4 => "IV",
         5 => "V",
         6 => "VI", 
         7 => "VII", 
         8 => "VIII",
         9 => "IX",
         10 => "X",
         20 => "XX", 
         30 => "XXX",
         40 => "XL",
         50 => "L",
         60 => "LX", 
         70 => "LXX", 
         80 => "LXXX",
         90 => "XC",
         100 => "C",
         200 => "C", 
         300 => "C",
         400 => "CD",
         500 => "D",
         600 => "DC", 
         700 => "DCC", 
         800 => "DCCC",
         900 => "CM",   
         1000 => "M",
         2000 => "MM",
         3000 => "MMM"
      }

      decimal_places = [1,10,100,1000]
      decimal_year = (self.to_s.chars.map(&:to_i).reverse).zip decimal_places

      decimal_year.map! { |i| i.inject(:*)}

      decimal_year.map { |val| conversion_hash[val]}.reverse.join('')

	end

end

93.to_roman
