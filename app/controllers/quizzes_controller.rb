class QuizzesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @desktop = true
    @quizzes = current_user.quizzes
  end
end
