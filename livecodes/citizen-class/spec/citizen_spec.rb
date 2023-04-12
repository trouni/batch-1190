require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it 'returns true if the citizen is older than 18' do
      citizen = Citizen.new('Guilherme', 'Hortinha', 19)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is younger than 18' do
      citizen = Citizen.new('Guilherme', 'Hortinha', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns the full name capitalized' do
      citizen = Citizen.new('guilherme', 'hortinha', 17)
      expect(citizen.full_name).to eq('Guilherme Hortinha')
    end

    it 'returns the full name capitalized' do
      citizen = Citizen.new('guilHErme', 'hOrtinha', 17)
      expect(citizen.full_name).to eq('Guilherme Hortinha')
    end
  end
end