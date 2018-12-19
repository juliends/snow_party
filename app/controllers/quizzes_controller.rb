class QuizzesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_desktop_display

  def index
    @quizzes = current_user.quizzes
  end

  def show
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end

  private

  def set_desktop_display
    @desktop = true
  end
end
