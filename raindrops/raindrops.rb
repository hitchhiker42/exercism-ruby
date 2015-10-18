class Raindrops

def self.convert(num)
   conversion = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
   result = ""

   conversion.map {|factor, sound| result += sound if (num%factor == 0) }
   result == "" ? num.to_s : result
end  
  
end