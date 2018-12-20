class Players::ResultsController < Players::BaseController
  skip_after_action :verify_policy_scoped

  def index
    @quiz = Game.find(params[:game_id]).quiz
    nasty_array = []
    @games = @quiz.games.where.not(score: 0).order(score: :desc).reject do |game|
      test = nasty_array.include?(game.player_id)
      nasty_array << game.player_id
      test
    end
  end
end
