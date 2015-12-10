require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1}
  let(:player_2) { double :player_2}

  describe '#initialize' do
    it "defaults to Player 1's turn" do
      expect(game.turn).to eq player_1
    end
  end

  describe '#attack' do
    it 'player_1 can attack player_2' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
    it 'player_2 can attack player_1 when it is their turn' do
      game.switch_turn
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end

  it 'switches turns to player 2' do
    expect{game.switch_turn}.to change{ game.turn }.to eq player_2
  end

end
