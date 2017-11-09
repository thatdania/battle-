require_relative '../player.rb'

describe Player do
  it 'player 1 name is returned' do
    expect($player1).to eq("Allan")
  end
  it 'player 2 name is returned' do
    expect($player2).to eq("Dania")
  end
end
