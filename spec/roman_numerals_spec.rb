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
    it 'converts 5 to v' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end

    it 'converts 20 to XX' do
      expect(convert_to_roman(20)).to eq "XX"
    end

    it 'converts 30 to XXX' do
      expect(convert_to_roman(30)).to eq "XXX"
    end

    it 'converts 50 to L' do
      expect(convert_to_roman(50)).to eq "L"
    end

    it 'converts 60 to L' do
      expect(convert_to_roman(60)).to eq "LX"
    end

    it 'converts 500 to D' do
      expect(convert_to_roman(500)).to eq "D"
    end

    it 'converts 499 to CCCCLXXXXVIIII' do
      expect(convert_to_roman(499)).to eq "CCCCLXXXXVIIII"
    end


  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here
    it 'converts 1 to I' do
      expect(convert_to_roman(1, { modern: true })).to eq "I"
    end
  
    it 'converts 2 to II' do
      expect(convert_to_roman(2, { modern: true })).to eq "II"
    end

    it 'converts 4 to IV' do
      expect(convert_to_roman(4, { modern: true })).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9, { modern: true })).to eq "IX"
    end

    it 'converts 14 to XIV' do
      expect(convert_to_roman(14, { modern: true })).to eq "XIV"
    end

    it 'converts 44 to XLIV' do
      expect(convert_to_roman(44, { modern: true })).to eq "XLIV"
    end

    it 'converts 99 to XCIX' do
      expect(convert_to_roman(99, { modern: true })).to eq "XCIX"
    end

    it 'converts 400 to CD' do
      expect(convert_to_roman(400, { modern: true })).to eq "CD"
    end

    it 'converts 944 to CMXLIV' do
      expect(convert_to_roman(944, { modern: true })).to eq "CMXLIV"
    end

  end
end
