class Game

  def Game.round(player1, player2)

    if player1 == "rock" && player2 == "paper"
      return "Player 2 wins with paper!"
    elsif player1 == "rock" && player2 == "scissors"
      return "Player 1 wins with rock!"

    elsif player1 == "paper" && player2 == "rock"
      return "Player 1 wins with paper!"
    elsif player1 == "paper" && player2 == "scissors"
      return "Player 2 wins with scissors"

    elsif player1 == "scissors" && player2 == "rock"
      return "Player 2 wins with rock!"
    elsif player1 == "scissors" && player2 == "paper"
      return "Player 1 wins with scissors"
      
    else
      return "It's a draw"
    end
  end

end
