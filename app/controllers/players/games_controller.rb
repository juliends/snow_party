class Players::GamesController < Players::BaseController
  def create
    @quiz = Quiz.find_by(playable: true)
    @game = Game.new(quiz: @quiz, player: current_player)
    authorize [:player, @game]
    @question = @game.latest_question
    @game_answer = GameAnswer.new(game: @game)
    if @game.save
      respond_to do |format|
        format.html { redirect_to players_game_path @game }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "players/quizzes/show" }
        format.js
      end
    end
  end

  def show
    @game = Game.find(params[:id])
    @question = @game.latest_question
    @game_answer = GameAnswer.new(game: @game)
    authorize [:player, @game]
    redirect_to players_game_results_path(@game) if @question.nil?
  end
end
