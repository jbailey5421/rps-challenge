require 'game' 


 
 


 
describe Game do 
    let(:player1) { double:player }
    let(:game) {Game.new(:player) }
    it 'knows we are playing RPS if not mentions otherwise' do
        expect(game.type).to eq 'RPS'
    end
    it 'knows we can choose to play rpssl instead of RPS' do
        rpssl_game = Game.new(:player1, 'RPSSL')
        expect(rpssl_game.type).to eq 'RPSSL'
    end
    it 'cannot play anything other than RPS OR RPSSL' do
        expect { Game.new(:player1, 'battleships') }.to raise_error 'You can only play a RPS type game'
    end
    it 'can be player by 1 but also by 2 players' do
     player2 = double(:player) 
     expect { Game.new(:player1, 'RPS', player2) }.not_to raise_error 
    end
    it 'knows that if there is only one player online, the 2nd player is the CPU' do 
       expect(game.player2).to eq 'CPU' 
    end    
    it 'chooses a random hand if there is onlu one player online' do
        expect(game.cpu_hand).to satisfy {'rock' || 'paper' || 'scissors' }
    end
 
end 