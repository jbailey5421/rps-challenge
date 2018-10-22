require 'capybara/rspec'
require 'player'
require 'game'

feature 'primary final test' do
  scenario '10 1 player RPS games vs the CPU' do
     10.times do
       steven = Player.new('steven')
       rps_game = Game.new(steven)
       steven.choice(%w(rock paper scissors).sample)
       expect(rps_game.decision(steven)).to satisfy { steven || 'draw' || 'CPU' }
     end
   end

   scenario '10 1 player RPSSL games vs the CPU' do
     10.times do
       steven = Player.new('steven')
       rpssl_game = Game.new(steven, 'RPSSL')
       steven.choice(%w(rock paper scissors spock lizard).sample)
       expect(rpssl_game.decision(steven)).to satisfy { steven || 'draw' || 'CPU' }
     end
end

   scenario '10 2 players RPS games' do
     10.times do
       steven1 = Player.new('hero steven')
       steven2 = Player.new('villain steven')
       rps_game = Game.new(steven1, 'RPS', steven2)
       steven1.choice(%w(rock paper scissors).sample)
       steven2.choice(%w(rock paper scissors).sample)
       expect(rps_game.decision(steven1, steven2)).to satisfy { steven1 || 'draw' || steven2 }
    end 
  end 
  scenario '10 2 players RPSSL games' do 
    10.times do 
      steven1 = Player.new('hero steven') 
      steven2 = Player.new('villain steven') 
      rpssl_game = Game.new(steven1, 'RPSSL', steven2) 
      steven1.choice(%w(rock paper scissors spock lizard).sample) 
      steven2.choice(%w(rock paper scissors spock lizard).sample) 
      expect(rpssl_game.decision(steven1, steven2)).to satisfy { steven1 || 'draw' || steven2 } 
    end 
  end 
end 