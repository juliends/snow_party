module QuizzesHelper

  def display_player_confort(game)
    game.confort? ? 'Oui' : 'Non'
  end
end
