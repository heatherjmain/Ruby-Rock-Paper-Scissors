require("sinatra")
require("sinatra/contrib/all") if development?
require_relative("./models/rock_paper_scissors.rb")

also_reload("./models/*")

get "/home" do
  erb(:home)
end

get "/play" do
  erb(:play)
end

get "/rock_paper_scissors/:player1/:player2" do
  @round = Game.round(params[:player1], params[:player2])
  erb(:result)
end

# get "/player_1/:selection" do
#   erb
# end




# def round(player1, player2)
#   puts "Please select for player 1"
#   player1 = gets.chomp.downcase
#
#   puts "Please select for player 2"
#   player2 = gets.chomp.downcase
#
#   @selections =  "Please copy and paste this into the address bar: http://localhost:4567/#{player1}/#{player2}"
# end
