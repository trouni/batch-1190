require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'returns an instance of Animal' do
      animal = Animal.new('Bing Bong')
      expect(animal).to be_an(Animal)
    end

    it 'exposes the name of the animal' do
      animal = Animal.new('Bing Bong')
      expect(animal).to respond_to(:name)
    end
  end

  describe '.phyla' do
    it 'returns an array of the phyla of the animal kingdom' do
      phyla = [
        "Phylum Porifera",
        "Phylum Coelenterata",
        "Phylum Platyhelminthes",
        "Phylum Nematoda",
        "Phylum Annelida",
        "Phylum Arthropoda",
        "Phylum Mollusca",
        "Phylum Echinodermata",
        "Phylum Protochordata",
        "Phylum Vertebrata",
      ]
      expect(Animal.phyla).to eq(phyla)
    end
  end

  describe '#eat' do
    it 'returns a sentence like “Timon eats a scorpion”' do
      peanut = Meerkat.new('Peanut')
      expect(peanut.eat('a scorpion')).to eq('Peanut eats a scorpion')
    end
  end
end