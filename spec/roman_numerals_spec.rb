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
    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here
    it 'converts 49 to XLIX' do
      expect(convert_to_roman(49, { modern: true})).to eq "XLIX"
    end
    it 'converts 2016 to MMXVI' do
      expect(convert_to_roman(2016, { modern: true})).to eq "MMXVI"
    end
    it 'converts 489 to CDLXXXIX' do
      expect(convert_to_roman(489, { modern: true})).to eq "CDLXXXIX"
    end

  end
end
