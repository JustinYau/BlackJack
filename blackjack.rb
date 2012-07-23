
class Player
  def initialize(name_from_input)
    @name = name_from_input
  end

  def name
    @name
  end
end

class Deck

  SUITS = ["H", "S", "C", "D"]
  FACE_VALUE = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

  def initialize
    @cards = Deck.construct_cards
  end

  def cards
    @cards
  end

  def self.construct_cards
    cards = []
    SUITS.each do |suit|
      FACE_VALUE.each do |face_value|
        cards << face_value + suit
      end
    end
    cards
  end
end



puts "WELCOME TO BLACKJACK!"

puts "what is your name?: "
input = gets
player = Player.new(input)
puts "welcome, #{player.name}"
deck = Deck.new


