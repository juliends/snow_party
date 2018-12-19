class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  protected

  # Only for sign in/up of User
  def after_sign_in_path_for(resource)
    if resource.class == User
      quizzes_path
    elsif resource.class == Player
      quiz_id = params[:quiz] || params[:player][:quiz]
      @quiz = Quiz.find(quiz_id)
      sign_in(resource) unless current_player
      players_quiz_path(@quiz)
    else
      # request.env['omniauth.origin'] || stored_location_for(resource) || root_path
      players_quiz_path(Quiz.first)
    end
  end
end
