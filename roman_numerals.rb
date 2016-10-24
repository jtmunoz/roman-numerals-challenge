def convert_to_roman(arabic_number, options = {})
  if options[:modern] == true
    convert_to_modern_roman(arabic_number)
  else
    convert_to_old_roman(arabic_number)
  end
end

def convert_to_modern_roman(arabic_number)
  output = ''
  numerals = {
    'M'=>1000,
    'D'=>500,
    'C'=>100,
    'L'=>50,
    'X'=>10,
    'V'=>5,
    'I'=>1
  }

    while arabic_number > 0
      numerals.each_with_index do |(rnum, anum), index|
        i = arabic_number / anum
        arabic_number = arabic_number % anum

        #handle cases when more than four of same numeral
        if i == 4
          last_rnum = numerals.keys[ index - 1 ]
          if
            output[-1] == last_rnum
            output[-1] = numerals.keys[index-2]
            output.insert(-2, rnum)
          else
            output << rnum
            output << last_rnum
          end
        else
          i.times do
            output << rnum
          end
        end
      end
    end

  output
end

def convert_to_old_roman(arabic_number)
  output = ''
  numerals = {
    'M'=>1000,
    'D'=>500,
    'C'=>100,
    'L'=>50,
    'X'=>10,
    'V'=>5,
    'I'=>1
  }
  while arabic_number > 0

    numerals.each do |rnum, anum|
      i = arabic_number / anum
      arabic_number = arabic_number % anum
      i.times do
        output << rnum
      end
    end
  end
  output
end

p convert_to_modern_roman(4)
p convert_to_roman(4, { modern: true })
