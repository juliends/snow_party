class Players::QuizzesController < Players::BaseController
  def show
    @quiz = Quiz.find(params[:id])
    authorize [:player, @quiz]
  end
end
