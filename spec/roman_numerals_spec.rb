require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    # Release 1 ...
    # add tests for old roman numerals here
       it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end


  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end

    it 'converts 11 to XI' do
      expect(convert_to_roman(11)).to eq "XI"
    end

    it 'converts 49 to XXXXVIIII' do
      expect(convert_to_roman(49)).to eq "XXXXVIIII"
    end

    it 'converts 50 to L' do
      expect(convert_to_roman(50)).to eq "L"
    end

    it 'converts 51 to LI' do
      expect(convert_to_roman(51)).to eq "LI"
    end

    it 'converts 99 to LXXXXVIIII' do
      expect(convert_to_roman(99)).to eq "LXXXXVIIII"
    end

    it 'converts 100 to C' do
      expect(convert_to_roman(100)).to eq "C"
    end

    it 'converts 101 to CI' do
      expect(convert_to_roman(101)).to eq "CI"
    end

    it 'converts 499 to CCCCLXXXXVIIII' do
      expect(convert_to_roman(499)).to eq "CCCCLXXXXVIIII"
    end

    it 'converts 500 to D' do
      expect(convert_to_roman(500)).to eq "D"
    end

    it 'converts 501 to DI' do
      expect(convert_to_roman(501)).to eq "DI"
    end

    it 'converts 999 to DCCCCLXXXXVIIII' do
      expect(convert_to_roman(999)).to eq "DCCCCLXXXXVIIII"
    end

    it 'converts 1000 to M' do
      expect(convert_to_roman(1000)).to eq "M"
    end

    it 'converts 1001 to MI' do
      expect(convert_to_roman(1001)).to eq "MI"
    end

  end

  describe 'modern Roman numerals' do
    it 'converts 4 to IV' do
      expect(convert_to_roman(4, modern: true)).to eq "IV"
    end
    it 'converts 9 to IX' do
      expect(convert_to_roman(9, modern: true)).to eq "IX"
    end
    it 'converts 14 to XIV' do
      expect(convert_to_roman(14, modern: true)).to eq "XIV"
    end
    it 'converts 44 to XLIV' do
      expect(convert_to_roman(44, modern: true)).to eq "XLIV"
    end
    it 'converts 49 to XLIX' do
      expect(convert_to_roman(49, modern: true)).to eq "XLIX"
    end
    it 'converts 99 to XCIX' do
      expect(convert_to_roman(99, modern: true)).to eq "XCIX"
    end
    it 'converts 400 to CD' do
      expect(convert_to_roman(400, modern: true)).to eq "CD"
    end
    it 'converts 499 to CDXCIX' do
      expect(convert_to_roman(499, modern: true)).to eq "CDXCIX"
    end
    it 'converts 944 to CMXLIV' do
      expect(convert_to_roman(944, modern: true)).to eq "CMXLIV"
    end
    it 'converts 999 to CMXCIX' do
      expect(convert_to_roman(999, modern: true)).to eq "CMXCIX"
    end
  end
end
