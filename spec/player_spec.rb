require 'player'

describe Player do
    let(:player1) { Player.new("Allan")}
  it 'Player 1 attack reduces Player 2 HP BY 10' do
    expect{player1.reduce_hit_points}.to change {player1.hit_points}.by(-10)
  end
end
