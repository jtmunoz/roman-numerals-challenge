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
    it 'converts 8 to VIII' do
      expect(convert_to_roman(8)).to eq "VIII"
    end

    it 'converts 48 to XXXXVIII' do
      expect(convert_to_roman(48)).to eq "XXXXVIII"
    end

    it 'converts 98 to LXXXXVIII' do
      expect(convert_to_roman(98)).to eq "LXXXXVIII"
    end

    it 'converts 198 to CLXXXXVIII' do
      expect(convert_to_roman(198)).to eq "CLXXXXVIII"
    end

    it 'converts 999 to DCCCCLXXXXVIIII' do
      expect(convert_to_roman(999)).to eq "DCCCCLXXXXVIIII"
    end

    it 'converts 2569 to MMDLXVIIII' do
      expect(convert_to_roman(2569)).to eq "MMDLXVIIII"
    end

  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
