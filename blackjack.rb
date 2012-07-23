
class Player
  def initialize(name_from_input)
    @name = name_from_input
  end

  def name
    @name
  end
end





puts "WELCOME TO BLACKJACK!"

puts "what is your name?: "
input = gets
player = Player.new(input)
puts "welcome, #{player.name}"


