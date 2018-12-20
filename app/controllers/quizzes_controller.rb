class QuizzesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :qr
  skip_before_action :authenticate_user!, only: :qr
  before_action :set_desktop_display, except: :qr
  before_action :set_quiz, only: [:show, :update, :close_quiz]

  def index
    @quizzes = current_user.quizzes
  end

  def show
  end

  def update
    @quiz.finish = !@quiz.finish
    @quiz.save
    broadcast_notification_to_players if @quiz.finish?
    redirect_to quiz_close_quiz_path(@quiz)
  end

  def qr
    @no_nav = true
    @qr_code = RQRCode::QRCode.new(new_player_registration_url(quiz: params[:quiz_id]))
  end

  def close_quiz
  end

  private

  def set_desktop_display
    @desktop = true
  end

  def set_quiz
    @quiz = Quiz.find_by(playable: true)
    authorize @quiz
  end

  def broadcast_notification_to_players
    ActionCable.server.broadcast("quiz_notifications_#{@quiz.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "shared/end_game_screen",
        locals: {
          winner_id: @quiz.games.where.not(score: 0).order(score: :desc).first.player_id,
          winner_name: @quiz.games.where.not(score: 0).order(score: :desc).first.player.username.capitalize
        }
      )
    })
  end
end
