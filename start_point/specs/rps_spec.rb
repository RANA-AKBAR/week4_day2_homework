require ('pry')
require ('minitest/autorun')
require ('minitest/rg')
require_relative("../models/rps.rb")

class RpsTest < MiniTest::Test

def test_player1_wins_scissors
  hand1 = "scissors"
  hand2 = "paper"
result = RPSGame.check_win(hand1, hand2)
assert_equal("Player 1 wins with scissors!", result)
end

end
