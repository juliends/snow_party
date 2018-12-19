class Players::ResultsController < Players::BaseController
  def index
    @game = Game.find(params[:game_id])
    @games = policy_scope([:player, Game]).time_related(@game)
  end
end
