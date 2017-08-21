require("sinatra")
require("sinatra/contrib/all") if development?
require_relative("./models/rock_paper_scissors.rb")

also_reload("./models/*")

get "/rock_paper_scissors/:player1/:player2" do
  @round = Game.round(params[:player1], params[:player2])
  erb(:result)
end
