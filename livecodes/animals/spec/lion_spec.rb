require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it 'returns an instance of Lion' do
      lion = Lion.new('Bing Bong')
      expect(lion).to be_a(Lion)
    end

    it 'exposes the name of the lion' do
      lion = Lion.new('Bing Bong')
      expect(lion).to respond_to(:name)
    end
  end

  describe '#talk' do
    it 'returns "Bing Bong roars"' do
      lion = Lion.new('Bing Bong')
      expect(lion.talk).to eq("Bing Bong roars")
    end
  end

  describe '#eat' do
    it 'returns a sentence like “Bing Bong eats a sausage. Law of the Jungle!”' do
      bingbong = Lion.new('Bing Bong')
      expect(bingbong.eat('a sausage')).to eq('Bing Bong eats a sausage. Law of the Jungle!')
    end
  end
end