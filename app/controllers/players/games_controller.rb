class Players::GamesController < Players::BaseController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @game = Game.new(quiz: @quiz, player: current_player)
    authorize [:player, @game]
    if @game.save
      redirect_to players_game_path @game
    else
      render "players/quizzes/show"
    end
  end

  def show
    @game = Game.find(params[:id])
    @question = @game.latest_question
    authorize [:player, @game]
  end
end
