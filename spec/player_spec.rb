require 'player' 


 
 


 
describe Player do
    let(:player) { Player.new('steven') } 
    it 'has a name' do
      expect(player.name).to eq 'steven'
    end
    it 'can choose a hand to play' do
        player.choice('rock')
        expect(player.hand).to eq 'rock'
    end
    it 'cannot choose a hand that is not a RPSSL hand' do 
       expect { player.choice('peanuts') }.to raise_error 'thats not part of the game rules' 
    end
end 