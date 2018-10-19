class Player
    attr_reader :name, :hand
    def initialize(name)
        @name = name
    end
    
    def choice(hand)
        weapons = %w(rock paper scissors spock lizard) 
        weapons.include?(hand.to_s.downcase) ? @hand = hand.downcase : (fail 'thats not part of the game rules')
    end
end