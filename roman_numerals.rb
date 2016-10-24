def convert_to_roman(arabic_number, options = {})
    num_of_thousands = arabic_number / 1000
    num_of_fivehundreds = (arabic_number % 1000) / 500
    num_of_hundreds = (arabic_number % 500) / 100
    num_of_fifties = (arabic_number % 100) / 50
    num_of_tens = (arabic_number % 50) / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    old_numerals = ("M" * num_of_thousands) + ('D' * num_of_fivehundreds) + ('C' * num_of_hundreds) + ('L' * num_of_fifties) + ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)
    if options[:modern] == true
      if old_numerals.include?('DCCCC')
        # new_numerals << "CM"
        old_numerals.gsub!('DCCCC', 'CM')
      elsif old_numerals.include?('CCCC')
        # new_numerals << "CD"
        old_numerals.gsub!('CCCC', 'CD')
      end
      if old_numerals.include?('LXXXX')
        # new_numerals << "XC"
        old_numerals.gsub!('LXXXX', 'XC')
      elsif old_numerals.include?('XXXX')
        # new_numerals << "XL"
        old_numerals.gsub!('XXXX', 'XL')
      end
      if old_numerals.include?('VIIII')
        # new_numerals << "IX"
        old_numerals.gsub!('VIIII', 'IX')
      elsif old_numerals.include?('IIII')
        # new_numerals << "IV"
        puts "HI"
        old_numerals.gsub!('IIII', 'IV')
      end
      return old_numerals
    end
    return old_numerals
end

convert_to_roman(4, {modern: true})
