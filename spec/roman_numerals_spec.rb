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

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 12 to XII' do
      expect(convert_to_roman(12)).to eq "XII"
    end

    it 'converts 16 to XVI' do
      expect(convert_to_roman(16)).to eq "XVI"
    end

    it 'converts 965 to DCCCCLXV' do
      expect(convert_to_roman(965)).to eq "DCCCCLXV"
    end

    it 'converts 963 to DCCCCLXIII' do
      expect(convert_to_roman(963)).to eq "DCCCCLXIII"
    end

    it 'converts 967 to DCCCCLXVII' do
      expect(convert_to_roman(967)).to eq "DCCCCLXVII"
    end

    it 'converts 2965 to MMDCCCC' do
      expect(convert_to_roman(2900)).to eq "MMDCCCC"
    end

    it 'converts 3000 to MMM' do
      expect(convert_to_roman(3000)).to eq "MMM"
    end



  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
