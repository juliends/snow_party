class Players::ResultsController < Players::BaseController
  skip_after_action :verify_policy_scoped

  def index
    @quiz = Game.find(params[:game_id]).quiz
    @games = @quiz.games.where.not(score: 0).order(score: :desc)
  end
end
