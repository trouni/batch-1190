require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it 'returns an instance of Warthog' do
      warthog = Warthog.new('Ruby')
      expect(warthog).to be_a(Warthog)
    end

    it 'exposes the name of the warthog' do
      warthog = Warthog.new('Ruby')
      expect(warthog).to respond_to(:name)
    end
  end

  describe '#talk' do
    it 'returns "Ruby grunts"' do
      warthog = Warthog.new('Ruby')
      expect(warthog.talk).to eq("Ruby grunts")
    end
  end
end