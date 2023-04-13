require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it 'returns an instance of Meerkat' do
      meerkat = Meerkat.new('Peanut')
      expect(meerkat).to be_a(Meerkat)
    end

    it 'exposes the name of the meerkat' do
      meerkat = Meerkat.new('Peanut')
      expect(meerkat).to respond_to(:name)
    end
  end

  describe '#talk' do
    it 'returns "Peanut barks"' do
      meerkat = Meerkat.new('Peanut')
      expect(meerkat.talk).to eq("Peanut barks")
    end
  end
end