# Map arabic to classic roman from most significant digit to least
TO_ROMAN = {
  1000 => "M",
  500 => "D",
  100 => "C",
  50 => "L",
  10 => "X",
  5 => "V",
  1 => "I"
}

# Map arabic to modern roman from most significant digit to least
TO_MODERN_ROMAN = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def convert_to_roman(arabic_number, opts = {})
  # SOLUTION A
  # The logic is the same for classic & modern
  # just have to use the correct mapping
  numeral_mapping = opts[:modern] ? TO_MODERN_ROMAN : TO_ROMAN

  # Initialize our roman numeral
  roman = ""

  # Go through the keys and append to roman numeral representation if applicable
  numeral_mapping.keys.each do |arabic|
    # The rounded down quotient is used to add correct amount of numerals
    quotient = arabic_number / arabic

    # The remainder is used to replace arabic_number
    # it is what we have left to process
    arabic_number = arabic_number % arabic

    # Take the correct roman numeral (according to mapping) and append the
    # appropriate amount of that numeral to the roman number
    roman << numeral_mapping[arabic] * quotient
  end
  return roman

  # # SOLUTION B
  # # Same solution as above sans comments
  # numeral_mapping = opts[:modern] ? TO_MODERN_ROMAN : TO_ROMAN
  # roman = ""
  # numeral_mapping.keys.each do |arabic|
  #   quotient = arabic_number / arabic
  #   arabic_number = arabic_number % arabic
  #   roman << numeral_mapping[arabic] * quotient
  # end
  # return roman

  # # SOLUTION C
  # # Super fancy solution but hard to read
  # # See the documentation for ruby's `reduce` and `divmod` if you're curious
  # numeral_mapping = opts[:modern] ? TO_MODERN_ROMAN : TO_ROMAN
  # numeral_mapping.keys.reduce("") do |roman,arabic|
  #   quotient, arabic_number = arabic_number.divmod(arabic)
  #   roman << numeral_mapping[arabic] * quotient
  # end
end
