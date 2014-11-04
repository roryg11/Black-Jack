module BlackJack
  class Card

    def initialize (suit, face)
      @suit = suit
      @face = face
    end

    def suit
      @suit
    end

    def face
      @face
    end

    def values
      if face == 'A'
        [1, 11]
      elsif face == 'J' || face == 'Q' || face == 'K'
        [10]
      else
        [face.to_i]
      end
    end

    def == card_2
      (@face == card_2.face) && (@suit == card_2.suit)
    end
  end
end
