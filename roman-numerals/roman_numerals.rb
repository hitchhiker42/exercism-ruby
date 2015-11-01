class Fixnum

  def to_roman
    conversion_hash =
     {
       1000 => 'M',
       900 => 'CM',
       500 => 'D',
       400 => 'CD',
       100 => 'C',
       90 => 'XC',
       50 => 'L',
       40 => 'XL',
       10 => 'X',
       9 => 'IX',
       5 => 'V',
       4 => 'IV',
       1 => 'I'
     }

    num = self
    roman = []
    
    conversion_hash.each do |key, value|
      until num < key
        roman << value
        num -= key
      end
    end
    roman.join('')
  end
end