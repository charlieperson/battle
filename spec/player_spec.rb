require 'player'

describe Player do
  subject(:player_1) { described_class.new('Timmy Jones') }
  subject(:player_2) { described_class.new('Johnny Cash') }

  it 'allow player to return name' do
    expect(player_1.name).to eq 'Timmy Jones'
  end

  describe '#receive_damage' do
    it "reduces player's hp when attacked" do
      expect{ player_2.receive_damage }.to change{ player_2.hp }.by -10
    end
  end
end
