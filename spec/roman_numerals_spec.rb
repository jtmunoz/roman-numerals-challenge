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

    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 20 to XX' do
      expect(convert_to_roman(20)).to eq "XX"
    end

    it 'converts 123 to CXXIII' do
      expect(convert_to_roman(123)).to eq "CXXIII"
    end

    it 'converts 2337 to MMCCCXXXVII' do
      expect(convert_to_roman(2337)).to eq "MMCCCXXXVII"
    end

    it 'converts 500 to D' do
      expect(convert_to_roman(500)).to eq "D"
    end

  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
