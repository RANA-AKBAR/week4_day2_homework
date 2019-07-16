require ("sinatra")
require ("sinatra/reloader") if development?
require_relative('./models/rps.rb')
also_reload("./models/*")

get '/rps/:player1/:player2' do
  hand1 = params[:player1].to_s
  hand2 = params[:player2].to_s
  @winner = RPSGame.check_win(hand1, hand2)
  erb(:result)
end
