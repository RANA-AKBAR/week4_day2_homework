require ("sinatra")
require ("sinatra_reloader") if developer?
require_relative('./models/rps.rb')
also_reload("./models/*")

get 'rps/:player1/:player2' do
  hand1 = [:player1]
  hand2 = [:player2]
  @winner = RPSGame.new(hand1, hand2)
end
