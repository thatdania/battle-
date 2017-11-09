require 'game'

# describe Game do
#   let(:player1) { Player.new("Allan")}
#   it 'game class exists' do
#     expect { player1.attack }.to change { player1.hit_points}.by(-10)
#   end
# end

describe Game do

   let(:player1) { Player.new("Allan")}
   let(:player2) { Player.new("Dania")}

   subject(:subject) { described_class.new(player1,player2)}

  it 'game class exists' do
    expect { subject.attack(player1) }.to change { player1.hit_points}.by(-10)
  end
end
