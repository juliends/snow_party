class Players::GameAnswersController < Players::BaseController
  before_action :set_game

  def create
    @game_answer = GameAnswer.new(game_answer_params)
    @game_answer.game = @game
    authorize [:player, @game_answer]
    if @game_answer.save
      redirect_to players_game_path @game
    else
      @question = @game_answer.answer.question
      render "players/games/show"
    end
  end

  private

  def game_answer_params
    params.require(:game_answer).permit(:answer_id)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
