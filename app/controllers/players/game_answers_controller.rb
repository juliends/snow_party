class Players::GameAnswersController < Players::BaseController
  before_action :set_game

  def create
    @game_answer = GameAnswer.new(game_answer_params)
    @game_answer.game = @game
    @game_answer.ends_at = Time.zone.now
    authorize [:player, @game_answer]
    respond_to do |format|
      if @game_answer.save
        @game_answer = GameAnswer.new
        @question = @game.latest_question
        format.html { redirect_to players_game_path @game }
      else
        @question = @game_answer.answer.question
        format.html { render "players/games/show" }
      end
      format.js { render "players/games/create" }
    end
  end

  private

  def game_answer_params
    params.require(:game_answer).permit(:answer_id, :start_at)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
