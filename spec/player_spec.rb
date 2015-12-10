require 'player'

describe Player do
  subject(:player) { described_class.new('Dave') }
  
  it 'allow player to return name' do
    expect(player.name).to eq 'Dave'
  end
end
