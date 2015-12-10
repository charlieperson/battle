require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_2) { double :player_2}

  describe '#attack' do
    it 'player_1 can attack player_2' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
