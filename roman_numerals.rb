def convert_to_roman(arabic_number)

    num_of_thousands = arabic_number / 1000
    num_of_fivehundreds = (arabic_number % 1000) / 500
    num_of_hundreds = (arabic_number % 500) / 100
    num_of_fifties = (arabic_number % 100) / 50
    num_of_tens = (arabic_number % 50) / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    return ("M" * num_of_thousands) + ('D' * num_of_fivehundreds) + ('C' * num_of_hundreds) + ('L' * num_of_fifties) + ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)

end

