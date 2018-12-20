class QuizzesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :qr
  skip_before_action :authenticate_user!, only: :qr
  before_action :set_desktop_display, except: :qr

  def index
    @quizzes = current_user.quizzes
  end

  def show
    @quiz = Quiz.find_by(playable: true)
    authorize @quiz
  end

  def qr
    @no_nav = true
    @qr_code = RQRCode::QRCode.new(new_player_registration_url(quiz: params[:quiz_id]))
  end

  private

  def set_desktop_display
    @desktop = true
  end
end
