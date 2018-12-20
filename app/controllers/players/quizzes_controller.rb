class Players::QuizzesController < Players::BaseController
  def show
    @quiz = Quiz.find_by(playable: true)
    authorize [:player, @quiz]
  end
end
